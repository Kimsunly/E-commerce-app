import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/// The code `import;



import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';class product_review extends StatelessWidget {
  const product_review({super.key});
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        /// ---Appbaar
        appBar: TAppBar(tiltle: text('Reveiws & Ratting ')),
    /// ---Body
    body: SingleChildScrollView(
    child: Padding(
    padding: const EdgeInsets.all(TSizes.defaultSpace),
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    const Text(
    "Ratings and reviews are verified and are from people who use the same type of device that you use."
    ),
    SizedBox(height: TSizes.spaceBetweenItems),

    /// Overall Product Ratings
    const Row(
    children: [
    Expanded(flex: 3, child: Text('4.8', style: theme.of(context).textTheme.displayLarge)),
    Expanded(
    flex: 7,
    child: Text(
    '4.8',
    style: Theme.of(context).textTheme.displayLarge,
    ),
    ),
    Expanded(
    EXpanded(flex: 1, child: Text('4.8', style: thme.of(context).textTheme.bodyMedium)),
    Expanded(
    flex: 11,
    child: Column(
    children: [
    Row(
    children: [
    Expanded(
    flex: 1,
    child: Text(
    '5',
    style: Theme.of(context).textTheme.bodyMedium,
    ),
    ),
    Expanded(
    flex: 11,
    child: SizedBox(
    width: TDeviceUtils.getScreenWidth(context) * 0.8,
    child: LinearProgressIndicator(
    value: 0.5,
    minHeight: 11,
    backgroundColor: TColors.grey,
    borderRadius: BorderRadius.circular(7),
    valueColor: AlwaysStoppedAnimation(TColors.primary),
     ),
    ),
    ),
    ],
    ),
    ],
    ),
    ),
    ],
    ),
    ],
    ),
    ),
    );






