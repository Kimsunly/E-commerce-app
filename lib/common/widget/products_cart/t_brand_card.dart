import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/enums.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';
import '../custom_shapes/containers/rounded_container.dart';
import '../image/t_circular_image.dart';
import '../text/t_brand_title_with_text_verified_icon.dart';

class TBrandCard extends StatelessWidget {
  const TBrandCard({
    super.key, required this.showborder,
  });

  final bool showborder;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: TRoundedContainer(
        padding: const EdgeInsets.all(TSizes.sm),
        showBorder: showborder,
        backgroundColor: Colors.transparent,
        child: Row(
          children: [
            //icon
            Flexible(
              child: TCircularimage(
                image: TImage.nikelogo,
                backgroundColor: Colors.transparent,
                overlayColor: THelperFunctions.isDarkMode(context)? TColors.white : TColors.dark,
              ),
            ),
            const SizedBox(width: TSizes.spaceBtwItems / 2,),

            //text
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TBrandTitleWithTextVerifiedIcon(title: 'NIKE',brandTextSize: TextSizes.large,),
                  Text(
                    '256 products',
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.labelMedium,
                  )
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}