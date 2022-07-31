import 'package:flutter/material.dart';

import '../../presentation/sources/colors/color_manager.dart';

class SnackBarMessage {
  late ThemeData _theme;
  void showSuccessSnackBar(
      {required String msg, required BuildContext context}) {
    _theme = Theme.of(context);
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          msg,
          style: _theme.textTheme.displaySmall,
        ),
        backgroundColor: ColorManager.success,
      ),
    );
  }

  void showErrorSnackBar({required String msg, required BuildContext context}) {
    _theme = Theme.of(context);
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          msg,
          style: _theme.textTheme.displaySmall,
        ),
        backgroundColor: ColorManager.error,
      ),
    );
  }
}
