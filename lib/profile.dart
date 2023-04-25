library profile;
import 'package:flutter/material.dart';
import 'package:profile/star_rating.dart';
import 'package:flutter/services.dart';
import 'package:profile/profile_avatar.dart';
import 'package:profile/profile_cover.dart';
import 'package:profile/profile_name.dart';
import 'package:profile/profile_address.dart';
import 'package:profile/profile_address_label.dart';
import 'package:profile/profile_appointment_button.dart';
import 'package:profile/profile_favorite_button.dart';
import 'package:profile/profile_share_button.dart';
import 'package:profile/profile_message_button.dart';
import 'package:profile/profile_phone_button.dart';

class Profile extends StatefulWidget {
  final String? coverImagePath;
  final String? avatarImagePath;
  final ProfileName? profileName;
  final ProfileAddressLabel? profileAddressLabel;
  final ProfileAddress? profileAddress;
  final int? rating;
  final ProfileFavoriteButton? profileFavoriteButton;
  final ProfileShareButton? profileShareButton;
  final ProfilePhoneButton? profilePhoneButton;
  final ProfileMessageButton? profileMessageButton;
  final void Function()? favoriteButtonOnPressed;
  final void Function()? shareButtonOnPressed;
  final void Function()? phoneButtonOnPressed;
  final void Function()? messageButtonOnPressed;
  final void Function()? appointmentButtonOnPressed;
  final ProfileAppointmentButton? profileAppointmentButton;
  final Color? backgroundColor;

  const Profile({Key? key,
    this.coverImagePath,
    this.avatarImagePath,
    this.profileName,
    this.profileAddressLabel,
    this.profileAddress,
    this.rating,
    this.profileFavoriteButton,
    this.profileShareButton,
    this.profilePhoneButton,
    this.profileMessageButton,
    this.favoriteButtonOnPressed,
    this.shareButtonOnPressed,
    this.phoneButtonOnPressed,
    this.messageButtonOnPressed,
    this.appointmentButtonOnPressed,
    this.profileAppointmentButton,
    this.backgroundColor,
  }) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  int _rating = 0;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            ProfileCover(imagePath: widget.coverImagePath ?? 'assets/images/profile_cover.jpg'),
            Align(
              alignment: Alignment.center,
              child: Container(
                margin: const EdgeInsets.only(top: 200),
                padding: const EdgeInsets.symmetric(horizontal: 20),
                color: widget.backgroundColor ?? Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 80,),
                    widget.profileName ?? ProfileName(),
                    const SizedBox(height: 10),
                    StarRating(
                      initialRating: widget.rating ?? 0,
                      onRatingChanged: (rating) {
                        setState(() {
                          _rating = rating;
                        });
                      },
                    ),
                    const SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        widget.profileFavoriteButton ?? ProfileFavoriteButton(onPressed: widget.favoriteButtonOnPressed ?? ProfileFavoriteButton.defaultOnPressed),
                        const SizedBox(width: 25),
                        widget.profileShareButton ?? ProfileShareButton(onPressed: widget.shareButtonOnPressed ?? ProfileShareButton.defaultOnPressed),
                        const SizedBox(width: 25),
                        widget.profilePhoneButton ?? ProfilePhoneButton(onPressed: widget.phoneButtonOnPressed ?? ProfilePhoneButton.defaultOnPressed),
                        const SizedBox(width: 25),
                        widget.profileMessageButton ?? ProfileMessageButton(onPressed: widget.messageButtonOnPressed ?? ProfileMessageButton.defaultOnPressed),
                        //const ProfileButtons().shareButton(onPressed: widget.shareButtonOnPressed ?? ProfileButtons.defaultOnPressed),
                      ],
                    ),
                    const SizedBox(height: 50),
                    widget.profileAddressLabel ?? ProfileAddressLabel(),
                    const SizedBox(height: 10),
                    widget.profileAddress ?? ProfileAddress(),
                    const SizedBox(height: 20),
                    widget.profileAppointmentButton ?? ProfileAppointmentButton(onPressed: widget.appointmentButtonOnPressed ?? ProfileAppointmentButton.defaultOnPressed),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 130,
              left: MediaQuery.of(context).size.width / 2 - 65,
              child: Container(
                width: 130,
                height: 130,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    width: 6,
                    color: Colors.purpleAccent.withOpacity(0.4),
                  ),
                ),
                child: ProfileAvatar(
                  radius: 60,
                  imagePath: widget.avatarImagePath ?? 'assets/images/profile_icon.jpg',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}