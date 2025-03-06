import 'package:flutter/material.dart';
import '../../../../utils/constants/colors.dart';
import '../containers/circular_container.dart';
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
      clipper: TcustomCurvedEdges(), // Custom clipper for wave effect
      child: child, // Fixed: Removed semicolon
    );
  }
}


