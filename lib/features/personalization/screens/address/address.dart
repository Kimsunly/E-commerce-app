import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserAddressScreen extends StatelessWidget {
  const UserAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: () => Get.to(() => const AddNewAddressScreen()), // Navigate to AddNewAddressScreen
        child: const Icon(Icons.add, color: Colors.white),
      ),
      appBar: AppBar(
        leading: const BackButton(),
        title: Text('Addresses', style: Theme.of(context).textTheme.headlineSmall),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(12), // Added padding
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), // Rounded corners
                  border: Border.all(color: Colors.grey.shade300), // Light grey border
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 5,
                      offset: const Offset(0, 2),
                    ),
                  ], // Added subtle shadow
                ),
                child: const Text('Your content here', textAlign: TextAlign.center),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AddNewAddressScreen extends StatelessWidget {
  const AddNewAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add New Address'),
      ),
      body: const Center(
        child: Text('Add New Address Screen Content'),
      ),
    );
  }
}
