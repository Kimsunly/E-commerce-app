import 'package:e_commerce_app/utils/device/device_utility.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';

class Tabbar extends StatelessWidget implements PreferredSizeWidget {
  //if want to add backgroundcolor have to wrap material widget


  const Tabbar({super.key, required this.tabs});

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Material(
      color: dark ? TColors.black : TColors.white,
      child: TabBar(
          tabs: tabs,
          isScrollable: true,
          indicatorColor: TColors.primary,
        labelColor: dark? TColors.white : TColors.primary,
        unselectedLabelColor: TColors.darkGrey,

      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight());
}
