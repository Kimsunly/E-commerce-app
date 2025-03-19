import 'package:e_commerce_app/common/widget/image/t_circular_image.dart';
import 'package:e_commerce_app/common/widget/text/sections_heading.dart';
import 'package:e_commerce_app/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widget/appbar/appbar.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        showBackArrow: true, title: Text('Profile')),
      /// --- Body ---
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              /// Profile Picture
              SizedBox(
                width: double.infinity,
                height: 200,
                child: Column(
                  children: [
                    TCircularimage(image: TImage.user, width: 80, height: 80),
                    TextButton(onPressed: (){}, child: const Text('Change Profile Picture')),
                  ],
                ),
              ),

              /// Details
              const SizedBox(height: TSizes.spaceBtwItems/2),
              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems),

              /// Heading Profile Infor
              TSectionHeading(title: 'Profile Information', showActionButton: false),
              const SizedBox(height: TSizes.spaceBtwItems),


              TProfileMenu(title: "Name ", value: "Big DD",onPressed: () { },),
              TProfileMenu(title: "UserName ", value: "Big DD",onPressed: () { },),

              const SizedBox(height: TSizes.spaceBtwItems),
              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems),

              /// Heading Personal Infor
              TSectionHeading(title: 'Personal Information', showActionButton: false),
              const SizedBox(height: TSizes.spaceBtwItems),

              TProfileMenu(title: "User ID ", value: "1111111",onPressed: () {},),
              TProfileMenu(title: "E-mail", value: "CoolKicks@gmail.com",onPressed: () {},),
              TProfileMenu(title: "Phone Number", value: "012345678",onPressed: () { },),
              TProfileMenu(title: "Gender", value: "Gay",onPressed: () {},),
              TProfileMenu(title: "Date of Birth", value: "30 Feb, 2050",onPressed: () {},),
              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems),

              Center(
                child:TextButton(
                    onPressed: (){},
                    child: const Text('Close Account', style: TextStyle(color: Colors.red)
                ),
              ),

              ),
            ],
          ),
        )
      ),
    );
  }
}

