import 'package:flutter/material.dart';
import 'common/widget/custom_shapes/curved_edges/curved_edge_widget.dart';
  // Import your widget file here

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Curved Edge Widget Example'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              TPrimaryHeaderContainer(
                child: Center(
                  child: Text(
                    'Hello, Curved Header!',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              // Add more content below as needed
            ],
          ),
        ),
      ),
    );
  }
}
