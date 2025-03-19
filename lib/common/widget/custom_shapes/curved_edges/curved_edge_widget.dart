import 'package:flutter/material.dart';
import 'curved_edges.dart';

class TCurvedEdgeWidget extends StatelessWidget {
  const TCurvedEdgeWidget({
    super.key,
    this.child, // Fixed: Corrected comma placement
  });

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: TCustomCurvedEdges(), // Custom clipper for wave effect
      child: child, // Fixed: Removed semicolon
    );
  }
}


