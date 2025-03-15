import 'package:flutter/cupertino.dart';

import '../../../utils/constants/sizes.dart';
import '../products_cart/product_card_vertical.dart';

class TGridlayout extends StatelessWidget {
  const TGridlayout(
      {super.key,
      this.mainAxisExtentet = 288,
      required this.itemBuidler,
      required this.products});

  final double? mainAxisExtentet;
  final Widget? Function(BuildContext, int) itemBuidler;
  final List<String> products;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: products.length,
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: TSizes.gridViewSpacing,
          crossAxisSpacing: TSizes.gridViewSpacing,
          mainAxisExtent: mainAxisExtentet),
      itemBuilder: itemBuidler,
    );
  }
}
