import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/mobile_layout.dart';
import 'package:responsive_dashboard/widgets/custom_drawer.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(flex: 2, child: CustomDrawer()),
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.only(top: 20),
            child: MobileLayout(),
          ),
        ),
      ],
    );
  }
}

