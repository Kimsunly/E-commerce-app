import "package:e_commerce_app/common/widget/layouts/list_tile/settings_menu_tile.dart";
import "package:flutter/material.dart";
import "package:iconsax/iconsax.dart";
import "../../../../common/widget/appbar/appbar.dart";
import "../../../../common/widget/custom_shapes/containers/primary_header_container.dart";
import "../../../../common/widget/layouts/list_tile/user_profile_tile.dart";
import "../../../../common/widget/text/sections_heading.dart";
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
                  TAppBar(
                      title: Text('Account',
                          style: Theme.of(context)
                              .textTheme
                              .headlineMedium!
                              .apply(color: TColors.white))),

                  /// User Profile Card
                  TUserProfileTile(),
                  const SizedBox(height: TSizes.spaceBtwSections),
                ],
              ),
            ), // TPrimaryHeaderContainer

            /// -- Body
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  /// Account setting
                  const TSectionHeading(title: 'Account Settings', showActionButton: false,),
                  const SizedBox(height: TSizes.spaceBtwItems),

                  TSettingsMenuTile(icon: Iconsax.safe_home, title: "My Addresses", subTitle: "Set Shopping delivery addresses", onTap: () {  },),
                  TSettingsMenuTile(icon: Iconsax.shopping_cart, title: "My Cart", subTitle: "Add, remove products and move to checkout", onTap: () {  },),
                  TSettingsMenuTile(icon: Iconsax.bag_tick, title: "My Orders", subTitle: "In-progress and Completed orders", onTap: () {  },),
                  TSettingsMenuTile(icon: Iconsax.bank, title: "Bank Account", subTitle: "Withdraw balance to registered bank account", onTap: () {  },),
                  TSettingsMenuTile(icon: Iconsax.discount_shape, title: "My Coupons", subTitle: "List of all the discounted coupons", onTap: () {  },),
                  TSettingsMenuTile(icon: Iconsax.notification, title: "Notifications", subTitle: "Set any kind of notifications message", onTap: () {  },),
                  TSettingsMenuTile(icon: Iconsax.security_card, title: "Account Privacy", subTitle: "Manage data usage and connected accounts", onTap: () {  },),

                  /// App settings
                    SizedBox(height: TSizes.spaceBtwSections),
                  const TSectionHeading(title: 'App Settings', showActionButton: false,),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  TSettingsMenuTile(icon: Iconsax.document_upload, title: "Load Data", subTitle: "Upload Data to your cloud Firebase", onTap: () {  },),
                  TSettingsMenuTile(
                    icon: Iconsax.location,
                    title: "Geolocation",
                    subTitle: "Set recommendation based on your location",
                    trailing: Switch(value: true, onChanged: (value) {  }),
                    onTap: () {  },),
                  TSettingsMenuTile(
                    icon: Iconsax.security_user,
                    title: "Safe Mode",
                    subTitle: "Search Result is safe for all ages",
                    trailing: Switch(value: false, onChanged: (value) {  }),
                    onTap: () {  },),
                  TSettingsMenuTile(
                    icon: Iconsax.image,
                    title: "HD Image Quality",
                    subTitle: "Set Image quality to be seen",
                    trailing: Switch(value: false, onChanged: (value) {  }),
                    onTap: () {  },),
                  /// -- Logout button
                  const SizedBox(height: TSizes.spaceBtwSections),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(onPressed: (){}, child: const Text('Logout')),
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections*2.5),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
