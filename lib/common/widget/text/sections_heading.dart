import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';

class TSectionHeading extends StatelessWidget {
  const TSectionHeading({
    super.key, this.textColor = Colors.white, this.showActionButton = false,  this.title= 'Popular Kicks', this.buttonTitle= 'View All', this.onPressed,
  });

  final Color? textColor ;
  final bool showActionButton;
  final String title, buttonTitle;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      
      padding: const EdgeInsets.symmetric(horizontal: TSizes.defaultSpace),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween, // Adjust alignment
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.headlineSmall!.apply(color: textColor),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          if (showActionButton)
            TextButton(onPressed: onPressed, child: Text(buttonTitle))
        ],
      ),
    );
  }
}
