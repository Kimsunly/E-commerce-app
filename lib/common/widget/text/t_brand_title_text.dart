import 'package:e_commerce_app/utils/constants/enums.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TBrandTitletext extends StatelessWidget {
  const TBrandTitletext({
    super.key, this.color, required this.title, this.maxLines = 1, this.textAlign = TextAlign.center,  this.brandTextSize = TextSizes.small,
  });

  final Color? color;
  final String title;
  final int maxLines;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      //check which brandsize is required and set style
      style: brandTextSize == TextSizes.small
        ?Theme.of(context).textTheme.bodyLarge!.apply(color: color)
          :brandTextSize == TextSizes.medium
              ?Theme.of(context).textTheme.bodyLarge!.apply(color: color)
              : brandTextSize == TextSizes.large
                ?Theme.of(context).textTheme.titleLarge!.apply(color: color)
                : Theme.of(context).textTheme.bodyMedium!.apply(color: color),
    );
  }
}