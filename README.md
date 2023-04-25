# Profile UI Template for Flutter

Profile is a Flutter package that provides a customizable UI template for a profile screen. It includes a circle avatar for the profile icon, a cover photo for the header, a star rating, icon buttons, address label and address text, and an appointment button. The layout is fixed but the attributes can be customized to fit your app's needs.

## Usage

To use the Profile UI Template in your Flutter app, kindly follow these steps:

1. Add the package to your pubspec.yaml file:

```
dependencies:
  profile: ^1.0.0
```

2. Import the package in your Dart code:

```
import 'package:profile/profile.dart';
```

3. Use the Profile widget in your app's user interface. Here is an example:

```
Profile(
  backgroundColor: Colors.white,
  coverImagePath: 'assets/images/profile_cover.jpg',
  avatarImagePath: 'assets/images/profile_avatar.jpg',
  profileName: ProfileName(name: 'Sample Name'),
  profileAddressLabel: ProfileAddressLabel(
                  fontFamily: GoogleFonts.poppins().fontFamily,
                  fontSize: 25,
                  fontColor: Colors.blue,
                ),
  profileAddress: ProfileAddress(address: '123 Hello St, Random City, PH, 1500'),
  rating: 3,
  profileFavoriteButton: ProfileFavoriteButton(
    onPressed: () => print('Favorite button pressed'),
  ),
  profileShareButton: ProfileShareButton(
    onPressed: () => print('Share button pressed'),
  ),
  profilePhoneButton: ProfilePhoneButton(
    onPressed: () => print('Phone button pressed'),
  ),
  profileMessageButton: ProfileMessageButton(
    onPressed: () => print('Message button pressed'),
  ),
  profileAppointmentButton: ProfileAppointmentButton(
    onPressed: () => print('Appointment button pressed'),
  ),
)

```

This will display a profile screen with the given attributes. You can customize any of the attributes by passing in different values to the constructor of each widget. For example, to change the cover photo, pass a different image path to the coverImagePath parameter.

* Note that some widgets have default values if you don't provide them. For example, if you don't provide a ProfileName widget, a default one will be used instead.


## Customization

Here's a list of the available widgets that you can use to customize the profile screen:

- ProfileCover: A widget that displays a cover photo for the profile header.
- ProfileAvatar: A widget that displays a circle avatar for the profile icon.
- ProfileName: A widget that displays the name of the profile owner.
- ProfileAddressLabel: A widget that displays a label for the profile address.
- ProfileAddress: A widget that displays the address of the profile owner.
- StarRating: A widget that displays a star rating.
- ProfileFavoriteButton: A widget that displays a favorite icon button.
- ProfileShareButton: A widget that displays a share icon button.
- ProfilePhoneButton: A widget that displays a phone icon button.
- ProfileMessageButton: A widget that displays a message icon button.
- ProfileAppointmentButton: A widget that displays an appointment button.

You can customize each of these widgets by passing in different values to their constructors. For example, to change the label of the appointment button widget, pass a different string to the label parameter of ProfileAppointmentButton.
