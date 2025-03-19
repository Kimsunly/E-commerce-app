import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widget/appbar/appbar.dart';
import '../../../../../common/widget/products_cart/cart_menu_icon.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/text_strings.dart';

class THomeAppbar extends StatelessWidget {
  const THomeAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: TAppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              TTexts.homeAppbarTitle,
              style: Theme.of(context)
                  .textTheme
                  .labelMedium!
                  .apply(color: TColors.white),
            ),
            Text(
              TTexts.homeAppbarSubTitle,
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .apply(color: TColors.white),
            ),
          ],
        ),
        actions: [
          TCartCounterIcon(
            onPressed: () {},
            iconColor: TColors.white,
          )
        ],
      ),
    );
  }
}

