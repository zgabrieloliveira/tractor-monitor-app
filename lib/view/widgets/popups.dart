import 'package:flutter/material.dart';

import '../../util/constants.dart';

class Popups {

  static void showSnackBar(bool state, String content, BuildContext context) {
    SnackBar connectionState = SnackBar(
        showCloseIcon: true,
        duration: const Duration(seconds: 2),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
        backgroundColor: state ? FLOURISHING_GREEN : DARK_RED,
        content: Center(child: Text(content))
    );

    ScaffoldMessenger.of(context).showSnackBar(connectionState); // mostra snackbar

  }

}