import 'package:flutter/material.dart';


class  NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     bottomNavigationBar: NavigationBar(
      destinations: [
        const NavigationDestination(icon: icon(Iconsax.home), label: 'Home      ')
        Container(color: Colors.green,),
        Container(color: Colors.cyan,),
        Container(color: Colors.deepPurple,),
        Container(color: Colors.orange),
      ],
     ),
    );
  }
}
