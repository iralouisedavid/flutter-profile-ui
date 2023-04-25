import 'package:flutter/material.dart';

class StarRating extends StatefulWidget {
  final int initialRating;
  final Function(int rating) onRatingChanged;

  const StarRating({Key? key, required this.initialRating, required this.onRatingChanged}) : super(key: key);

  @override
  _StarRatingState createState() => _StarRatingState(initialRating);
}

class _StarRatingState extends State<StarRating> {
  int _rating;

  _StarRatingState(this._rating);

  void _updateRating(int newRating) {
    setState(() {
      _rating = newRating;
    });
    widget.onRatingChanged(newRating);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(5, (index) {
        if (index < _rating) {
          return const Icon(Icons.star_rounded, color: Colors.amber, size: 30);
          // return GestureDetector(
          //   onTap: () => _updateRating(index + 1),
          //   child: const Icon(Icons.star_rounded, color: Colors.amber, size: 30),
          // );
        } else {
          return const Icon(Icons.star_border_rounded, color: Colors.amber, size: 30);
          // return GestureDetector(
          //   onTap: () => _updateRating(index + 1),
          //   child: const Icon(Icons.star_border_rounded, color: Colors.amber, size: 30),
          // );
        }
      }),
    );
  }
}
