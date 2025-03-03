import 'package:e_commerce_app/common/widget/appbar/appbar.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import '../../../../common/widget/custom_shapes/containers/circular_container.dart';
import '../../../../common/widget/custom_shapes/curved_edges/curved_edge_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  TAppBar()
                ],
              ),
            ),
            // Add more widgets below as needed
          ],
        ),
      ),
    );
  }
}
