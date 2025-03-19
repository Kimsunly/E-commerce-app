import 'package:flutter/material.dart';
import '../../../../../common/widget/custom_shapes/containers/rounded_container.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class TProductAttributes extends StatelessWidget {
  const TProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Column(
      children: [
        /// -- Selected Attribute Pricing & Description
        TRoundedContainer(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          backgroundColor: dark ? TColors.darkGrey : TColors.grey,
          child: Column(
            children: <Widget>[
              TSectionHeading(title: 'Variation', showActionButtons: false),
              const SizedBox(height: TSizes.defaultSpace),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      TProductTitleText(title: 'Price: ', smallSize: true),
                      const SizedBox(width: TSizes.defaultSpace),
                      /// Actual Price
                      Text(
                        '\$ 125',
                        style: Theme.of(context)
                            .textTheme
                            .titleSmall
                            ?.copyWith(decoration: TextDecoration.lineThrough),
                      ),
                      const SizedBox(width: TSizes.defaultSpace),
                      /// Sale Price
                      TProductTitleText(title: '\$ 20', smallSize: true),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      TProductTitleText(title: 'Stock: ', smallSize: true),
                      const SizedBox(width: TSizes.defaultSpace),
                      Text(
                        'In Stock',
                        style: Theme.of(context)
                            .textTheme
                            .titleSmall
                            ?.copyWith(color: dark ? TColors.white :null),
                      ),
                    ],
                  ),
                ],
              ),
              /// Variation Description
              TProductTitleText(
                title: 'This is the description of the product and it can go up to max 4 lines.',
                smallSize: true,
                maxLines: 4,
              )
            ],
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwItems),
        /// -- Attributes
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: TSizes.spaceBtwItems / 2),
            TSectionHeading(title: 'Colors', showActionButtons: false),
            Wrap(
              spacing: 8,
              children: [
                TChoiceChip(label: 'Green', selected: false, onSelected: (value) {}),
                TChoiceChip(label: 'Blue', selected: true, onSelected: (value) {}),
                TChoiceChip(label: 'Yellow', selected: false, onSelected: (value) {}),
              ],
            ),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: TSizes.spaceBtwItems / 2),
            TSectionHeading(title: 'Size', showActionButtons: false),
            Wrap(
              spacing: 8,
              children: [
                TChoiceChip(label: 'EU 34', selected: true, onSelected: (value) {}),
                TChoiceChip(label: 'EU 36', selected: false, onSelected: (value) {}),
                TChoiceChip(label: 'EU 38', selected: false, onSelected: (value) {}),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

class TChoiceChip extends StatelessWidget {
  final String label;
  final bool selected;
  final ValueChanged<bool> onSelected;

  const TChoiceChip({required this.label, required this.selected, required this.onSelected, super.key});

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      label: Text(label),
      selected: selected,
      onSelected: onSelected,
    );
  }
}

class TProductTitleText extends StatelessWidget {
  final String title;
  final bool smallSize;
  final int? maxLines;

  const TProductTitleText({required this.title, required this.smallSize, this.maxLines, super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      style: smallSize
          ? Theme.of(context).textTheme.bodySmall
          : Theme.of(context).textTheme.bodyMedium,
    );
  }
}

class TSectionHeading extends StatelessWidget {
  final String title;
  final bool showActionButtons;

  const TSectionHeading({required this.title, required this.showActionButtons, super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.titleLarge,
    );
  }
}
