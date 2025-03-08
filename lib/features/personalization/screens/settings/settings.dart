import "package:flutter/material.dart";
import "../../../../common/widget/appbar/appbar.dart";
import "../../../../common/widget/custom_shapes/containers/primary_header_container.dart";
import "../../../../utils/constants/colors.dart";
import "../../../../utils/constants/sizes.dart";

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
                  ListTile(
                    leading: TCircularImage(,
                  ),
                  const TuserProfiletitle(), // ListTile

                  const SizedBox(height: TSizes.spaceBtwSections),
                ],
              ),
            ), // TPrimaryHeaderContainer

            /// -- Body
            const Padding (
              padding: EdgeInsets.all(TSizes.defaultSpace);
                child: column (
                 /// Account setting
                 
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
}
