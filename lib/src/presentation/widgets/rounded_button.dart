import 'package:bolt_ecommerce/src/presentation/sources/fonts/fonts_manager.dart';
import 'package:bolt_ecommerce/src/presentation/sources/values/value_manager.dart';
import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final VoidCallback press;
  final bool isLoading;
  final Color color, textColor, backgroundColor;
  final double? width;
  const RoundedButton({
    Key? key,
    required this.text,
    required this.press,
    required this.color,
    required this.isLoading,
    this.textColor = Colors.white,
    this.width,
    required this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: AppSize.s12),
      width: width ?? size.width * 0.7,
      child: ElevatedButton(
        style: TextButton.styleFrom(backgroundColor: backgroundColor),
        onPressed: isLoading ? null : press,
        child: Padding(
          padding: const EdgeInsets.all(AppPadding.p12),
          child: isLoading
              ? const CircularProgressIndicator()
              : Text(
                  text,
                  style: TextStyle(
                    color: textColor,
                    fontSize: FontSize.s14,
                  ),
                ),
        ),
      ),
    );
  }
}
