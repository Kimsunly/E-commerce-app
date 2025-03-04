import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'add_new_address_screen.dart'; // Assuming you have this file

class UserAddressScreen extends StatelessWidget {
  const UserAddressScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.primary,
        onPressed: () => Get.to(() => const AddNewAddressScreen()),
        child: const Icon(Icons.add, color: Colors.white),
      ),//floatingActionButton
      appBar: AppBar(
        leading: BackButton(),
        title: Text('Addresses', style: Theme.of(context).textTheme.headlineSmall),
      ),//appBar
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0), // Assuming TSizes.defaultSpace is 16.0
          child: Column(
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(),
                  color: Colors.white, // Assuming this is the background color you want
                ),
                child: Text('Your content here'), // Add your content here
              ),
            ],
          ),
        ),
      ),
    );
  }
}