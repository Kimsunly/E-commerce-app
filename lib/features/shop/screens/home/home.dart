import 'package:e_commerce_app/common/widget/appbar/appbar.dart';
import 'package:e_commerce_app/features/shop/screens/home/widget/home_appbar.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/device/device_utility.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../common/widget/custom_shapes/containers/circular_container.dart';
import '../../../../common/widget/custom_shapes/containers/search_container.dart';
import '../../../../common/widget/custom_shapes/curved_edges/curved_edge_widget.dart';
import '../../../../common/widget/products_cart/cart_menu_icon.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';
import 'package:e_commerce_app/common/widget/products_cart/cart_menu_icon.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Custom clipped background section
          TPrimaryHeaderContainer(
            child: Column(
              children: [

              ],
            ),
          ),
          // AppBar on top of the clipped section
          THomeAppbar(),
          SizedBox(height: TSizes.spaceBtwSections),
          //search bar
          TSearchContainer( text: 'Search in FUCKERS'),
          SizedBox(height: TSizes.spaceBtwSections),
          //CATERGORIES
          Padding(padding: EdgeInsets.only(left: TSizes.defaultSpace), child: Column(children: [
            Text('Popular Categories', style: Theme.of(context).textTheme.headlineSmall),
          ],
          ),
          )
        ],
      ),
    );
  }
}

