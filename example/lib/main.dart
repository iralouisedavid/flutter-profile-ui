import 'package:flutter/material.dart';
import 'package:profile/profile.dart';
import 'package:profile/profile_address.dart';
import 'package:profile/profile_address_label.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:profile/profile_appointment_button.dart';
import 'package:profile/profile_favorite_button.dart';
import 'package:profile/profile_message_button.dart';
import 'package:profile/profile_name.dart';
import 'package:profile/profile_phone_button.dart';
import 'package:profile/profile_share_button.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  void showSnackBar(BuildContext context, String message) {
    final snackBar = SnackBar(content: Text(message));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sample Profile',
      home: OrientationBuilder(
        builder: (context, orientation) {
          return Scaffold(
            body: SafeArea(
              child: Profile(
                //coverImagePath: 'assets/images/header2.jpg',
                coverImagePath: 'https://picsum.photos/seed/picsum/1500/1600',
                avatarImagePath: 'assets/images/profile2.jpg',
                //avatarImagePath: 'https://picsum.photos/id/100/200/300',
                rating: 3,
                backgroundColor: Colors.black87,
                profileName: ProfileName(
                   nameText: 'New Name',
                  fontFamily: GoogleFonts.poppins().fontFamily,
                  fontSize: 30,
                  fontColor: Colors.white,
                ),
                profileAddressLabel: ProfileAddressLabel(
                  fontFamily: GoogleFonts.poppins().fontFamily,
                  fontSize: 25,
                  fontColor: Colors.white,
                ),
                profileAddress: ProfileAddress(
                  addressText: '22nd flr., Random Bldg.\n123 Hello Street\nQuezon City, Philippines\n5600',
                  fontFamily: GoogleFonts.poppins().fontFamily,
                  fontSize: 16,
                  fontColor: Colors.white,
                ),
                profileFavoriteButton: const ProfileFavoriteButton(
                  icon: Icons.heart_broken_rounded,
                  iconColor: Colors.pinkAccent,
                ),
                profileShareButton: const ProfileShareButton(
                  icon: Icons.ios_share,
                  iconColor: Colors.white,
                ),
                profilePhoneButton: const ProfilePhoneButton(
                  icon: Icons.video_call,
                  iconColor: Colors.lightGreenAccent,
                ),
                profileMessageButton: const ProfileMessageButton(
                  icon: Icons.access_alarm_rounded,
                  iconColor: Colors.orange,
                ),
                favoriteButtonOnPressed: () => showSnackBar(context, 'Favorite button pressed'),
                shareButtonOnPressed: () => showSnackBar(context, 'Share button pressed'),
                phoneButtonOnPressed: () => showSnackBar(context, 'Phone button pressed'),
                messageButtonOnPressed: () => showSnackBar(context, 'Message button pressed'),
                profileAppointmentButton: const ProfileAppointmentButton(
                  buttonText: 'New Appointment',
                  buttonColor: Colors.orange,
                  fontColor: Colors.white,
                  fontWeight: FontWeight.w800,
                  fontSize: 16,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
