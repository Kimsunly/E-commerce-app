import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:t_store/utils/constants/colors.dart';
import '../../../common/widgets/texts/section_heading.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';
import '../TEST_Flutter/flutter/packages/flutter/lib/cupertino.dart';

class TProductAttributes extends StatelessWidget {
  const TProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return newMethod(dark, context);
  }

  Column newMethod(dark, BuildContext context) {
    return Column(
        children: [
    /// -- Selected Attribute Pricing & Description
    TRoundedContainer(
    padding : const EdgeInsets.all(TSizes.defaultSpace),
    backroundColor: dark ? TColors.darkGrey : TColors.gery,
    child: Column(
    children: [
    const TSectionHeading(title :'variations',showActionButtons: false),
    const SizedBox(height: TSizes.defaultSpace),
    Column(
    children:
    Row(
    children: [
    const TProducttitleText(title: 'price:',smallSize: true),
    const SizedBox(width: TSizes.defaultSpace),
    /// actual price
    Text (
    '\$ 100.00',
    style: theme.of(context).textTheme.titlesmall!.
    )
    ],
    )
    ),
    ),
  }
}