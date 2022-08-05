import 'package:bolt_ecommerce/src/presentation/sources/colors/color_manager.dart';
import 'package:bolt_ecommerce/src/presentation/sources/image/assets_manager.dart';
import 'package:flutter/material.dart';

class BackIcon extends StatelessWidget {
  const BackIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pop(context);
      },
      child: Image.asset(
        ImageAssetsManager.backArrow,
        color: ColorManager.gray,
      ),
    );
  }
}
