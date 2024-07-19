import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'app_theme.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {

  final String title;
  const CustomAppBar({Key? key, required this.title}) : super(key: key);

  @override
  _CustomAppBarState createState() => _CustomAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return _buildAppBar();
  }

  // personalização da appbar (barra superior da tela)
  AppBar _buildAppBar() {
    return AppBar(
      centerTitle: true,
      toolbarHeight: 75,
      automaticallyImplyLeading: false,
      title: Text(
        widget.title,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () => AppTheme.switchTheme(),
          icon: const Icon(CupertinoIcons.sun_max),
        ),
      ]
      // Row(
      //   crossAxisAlignment: CrossAxisAlignment.center,
      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //   children: [
      //     Text(
      //       widget.title,
      //       style: const TextStyle(
      //         fontSize: 18,
      //         fontWeight: FontWeight.bold,
      //       ),
      //     ),
      //     Row(
      //       children: [
      //         IconButton(
      //           onPressed: () => AppTheme.switchTheme(),
      //           icon: const Icon(CupertinoIcons.sun_max),
      //         ),
      //       ],
      //     ),
      //   ],
      // ),
    );
  }
}
