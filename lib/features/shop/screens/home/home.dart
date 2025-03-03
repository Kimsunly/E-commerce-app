import 'package:e_commerce_app/common/widget/appbar/appbar.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../common/widget/custom_shapes/containers/circular_container.dart';
import '../../../../common/widget/custom_shapes/curved_edges/curved_edge_widget.dart';
import '../../../../utils/constants/text_strings.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  TAppBar(title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(TTexts.homeAppbarTitle, style: Theme.of(context).textTheme.labelMedium!.apply(color: TColors.white)),
                      Text(TTexts.homeAppbarSubTitle, style: Theme.of(context).textTheme.headlineSmall!.apply(color: TColors.white)),
                    ], // ✅ Fixed closing bracket
                  ),
                  actions: [
                    IconButton(onPressed: (){}, icon: const Icon(Iconsax.shopping_bag, color: TColors.white,))
                  ],
                  )
                ],
              ),
            ),
            // Add more widgets below as needed
          ],
        ),
      ),
    );
  }
}
