import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tractor_monitor_app/util/constants.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  final int selectedIndex;
  final Function(int)? onItemSelected;

  const BottomNavigationBarWidget({
    super.key,
    required this.selectedIndex,
    required this.onItemSelected,
  });

  @override
  State<BottomNavigationBarWidget> createState() =>
      _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // return Consumer<NotificationController>(
    //   builder: (BuildContext context, _, __) {
    return CurvedNavigationBar(
      color: DARK_GREEN,
      backgroundColor: ACCENT_GREEN,
      animationDuration: const Duration(milliseconds: 300),
      // selectedItemColor: WHITE,
      // unselectedItemColor: WHITE,
      // elevation: 24,
      // type: BottomNavigationBarType.fixed,
      onTap: widget.onItemSelected,
      // currentIndex: widget.selectedIndex,
      items: [
        Icon(
          color: WHITE,
              Icons.home_filled,
              // widget.selectedIndex == 0 ? Icons.home : Icons.home_outlined,
              size: 27),
        Icon(
            color: WHITE,
              // widget.selectedIndex == 1 ?
            CupertinoIcons.list_bullet,
              size: 27),

        // BottomNavigationBarItem(
        //   icon: Icon(
        //       widget.selectedIndex == 2 ? CupertinoIcons.bolt_circle_fill : CupertinoIcons.bolt_circle,
        //       size: 27),
        //   label: 'label',
        // ),
      ],
    );
    //   },
    // );
  }

}
