import 'package:flutter/cupertino.dart';
import '../../../../../common/widget/image_text_widgets/vertical_image_text.dart';
import '../../../../../utils/constants/image_strings.dart';

class THomeCategories extends StatelessWidget {
  const THomeCategories({super.key});

  @override
  Widget build(BuildContext context) {
    // List of category images and names
    List<Map<String, String>> categories = [
      {"image": TImage.nikelogo, "name": "   Nike"},
      {"image": TImage.adidas, "name": " Adidas"},
      {"image": TImage.puma, "name": "   Puma"},
      {"image": TImage.newbalance, "name": "New Balance"},
      {"image": TImage.jordan, "name": " Air Jordan"},
      {"image": TImage.asics, "name": "    Asics"},
    ];

    return SizedBox(
      height: 120, // Ensure ListView has a fixed height
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: categories.length, // Use length of the list
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return TVerticalImageText(
            image: categories[index]["image"]!, // Assign different images based on index
            title: categories[index]["name"]!,  // Assign different names based on index
            onTap: () {},
          );
        },
      ),
    );
  }
}
