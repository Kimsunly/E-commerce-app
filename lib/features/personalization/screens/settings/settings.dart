import "package:flutter/material.dart";

import
import "../../../../common/widget/custom_shapes/containers/primary_header_container.dart";
import "../../../../utils/constants/sizes.dart";...

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// -- Header
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  /// AppBar
                  TAppBar(title: Text('Account', style: Theme.of(context).textTheme.headlineMedium!.apply(color: TColors.white))),

                  /// User Profile Card
                  const TuserProfiletitle(), // ListTile

                  const SizedBox(height: TSizes.spaceBtwSections),
                ],
              ),
            ), // TPrimaryHeaderContainer

            /// -- Body
            const Padding (
              padding: EdgeInsets.all(TSize.defaultspace).
                child: column (
                 /// Account setting
                 TSectionHeading(title:'Account setting'),
                 SizedBox(hieght:TSize.spaceBtwItems),
               TSettingMenuTitle(
                icon: Iconsex.safe_home,
                title:'My Addresses',
                subtitle:'Set shopping delivery address',
                 ontap: (){},
               ),    //TSectionHeading

              ),
            ),
          ],
        ),
      ),
    );
  }
}

extension on EdgeInsets {
  get child => null;
}

class TSize {
  static double defaultspace;
}

class TuserProfiletitle extends StatelessWidget {
  const TuserProfiletitle({
    super.key,
  });

