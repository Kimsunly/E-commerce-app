import 'package:e_commerce_app/common/widget/layouts/grid_layout.dart';
import 'package:e_commerce_app/common/widget/products_cart/product_card_vertical.dart';
import 'package:e_commerce_app/common/widget/text/sections_heading.dart';
import 'package:flutter/cupertino.dart';

import '../../../../../common/widget/brands/brand_showcase.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';

class TCategoryTab extends StatelessWidget {
   TCategoryTab({super.key});

  var products_list = [

    TImage.Nike_Dunk_Low_Retro,
    TImage.Nike_Air_Force_1_Mid_Off_White,
    TImage.Puma_Youth_Rickie_Sneake,
    TImage.Nike_Winflo_10,
    TImage.ultraboost_1_shoes,
    TImage.Puma_Up_Mens_White_Mr_Tekkie,
    TImage.Nike_Sneaker,
    TImage.Fresh_Foam_X_1080v14,
    TImage.FuelCell_Rebel_V4,
    TImage.Nike_Revolution_7,
    TImage.ultraboost_5x_shoes_1,
    TImage.Nike_Sneakers_Air_Jordan_4_Retro,

  ];
  var product_name = [
    'Nike DunkLow Retro',
    'Nike AirForce1 MidOffWhite',
    'Puma YouthRickieSneake',
    'Nike Winflo10',
    'ultraboost1 shoes',
    'Puma Up Mens White MrTekkie',
    'Nike Sneaker',
    'Fresh Foam X 1080v14',
    'FuelCell Rebel V4',
    'Nike Revolution 7',
    'ultraboost5x shoes1',
    'Nike Sneakers AirJordan 4 Retro',

  ];
  var saleta = [
    '15%','60%','78%','47%','38%','78%','48%','90%','55%','38%','10%','20%',
  ];

  @override
  Widget build(BuildContext context) {
    return   ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          children: [
            //brands
            TBrandShowcase(images: [TImage.Nike_Air_Force_1,TImage.Nike_Air_Force_1_Mid_Off_White,TImage.Nike_Dunk_Low_Retro],),

            TSectionHeading(title: 'You might Like',showActionButton: true,onPressed: (){},),
            const SizedBox(height: TSizes.spaceBtwItems,),

            TGridlayout(itemCount: products_list.length, itemBuidler: (_,index) => ProductCardVertical(p_image:   products_list[index],
              name_product: product_name[index],
              disocunt_tag: saleta[index],)),
            const SizedBox(height: TSizes.spaceBtwItems,),
          ],

        ),

      ),
    ],
    );
  }
}
