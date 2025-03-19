import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widget/appbar/appbar.dart';
import '../../../../utils/constants/sizes.dart';

@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: const TAppBar(
      showBackArrow: true,
      title: Text('Add New Address'),
      backgroundColor: Colors.transparent, // Updated to a valid color (transparent in this case)
    ),
    body: SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(TSizes.defaultSpace),
        child: Form(
          child: Column(
            children: [
              // Name field
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Iconsax.user),
                  labelText: 'Name',
                ),
              ),
              const SizedBox(height: TSizes.spaceBtwInputFields),

              // Phone number field
              TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.mobile),
                  labelText: 'Phone Number',
                ),
              ),
              const SizedBox(height: TSizes.spaceBtwInputFields),

              // Address and zip code fields in a row
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Iconsax.building_31),
                        labelText: 'Address',
                      ),
                    ),
                  ),
                  const SizedBox(width: TSizes.spaceBtwInputFields),
                  Expanded(
                    child: TextFormField(
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Iconsax.code),
                        labelText: 'Zip Code',
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: TSizes.spaceBtwInputFields),

              // City and state fields in a row
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Iconsax.building),
                        labelText: 'City',
                      ),
                    ),
                  ),
                  const SizedBox(width: TSizes.spaceBtwInputFields),
                  Expanded(
                    child: TextFormField(
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Iconsax.activity),
                        labelText: 'State',
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: TSizes.spaceBtwInputFields),

              // Country field
              TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.global),
                  labelText: 'Country',
                ),
              ),
              const SizedBox(height: TSizes.defaultSpace),

              // Save button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    // Add save logic here
                  },
                  child: const Text("Save"),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
