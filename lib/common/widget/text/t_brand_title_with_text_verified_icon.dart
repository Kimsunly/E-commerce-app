import 'package:e_commerce_app/common/widget/text/t_brand_title_text.dart';
import 'package:e_commerce_app/utils/constants/enums.dart';
import 'package:flutter/cupertino.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';

class TBrandTitleWithTextVerifiedIcon extends StatelessWidget {
  const TBrandTitleWithTextVerifiedIcon(
      {super.key, required this.title,  this.maxLines = 1, this.textColor, this.iconColor= TColors.primary, this.textAlign= TextAlign.center,  this.brandTextSize = TextSizes.small});

  final String title;
  final int maxLines;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;


  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: TBrandTitletext(
            title:title,
            color: textColor,
            maxLines: maxLines,
            textAlign: textAlign,
            brandTextSize: brandTextSize,
          ),
        ),
        const SizedBox(width: TSizes.xs,),
        Icon(Iconsax.verify5, color: iconColor, size: TSizes.iconXs,)
      ],
    );
  }
}
