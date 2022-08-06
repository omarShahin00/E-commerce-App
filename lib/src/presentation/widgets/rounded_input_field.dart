import 'package:bolt_ecommerce/src/presentation/sources/fonts/fonts_manager.dart';
import 'package:bolt_ecommerce/src/presentation/sources/values/value_manager.dart';
import 'package:bolt_ecommerce/src/presentation/widgets/text_field_container.dart';
import 'package:flutter/material.dart';

class RoundedInputField extends StatelessWidget {
  final TextEditingController? controller;

  final String? hintText;
  final String? helperText;
  final String? valueText;
  final bool? enabled;
  final int? maxLines;
  final IconData? icon;
  final TextInputType? inputType;

  final TextInputAction? textInputAction;
  final dynamic validator;
  final ValueChanged<String>? onChanged;
  final VoidCallback? onTap;
  final ValueChanged<String>? onFieldSubmitted;
  const RoundedInputField({
    Key? key,
    this.controller,
    this.hintText,
    this.icon,
    this.onChanged,
    this.valueText,
    this.inputType,
    this.enabled,
    this.textInputAction,
    this.validator,
    this.maxLines,
    this.onTap,
    this.helperText,
    this.onFieldSubmitted,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(AppPadding.p8),
        child: TextFieldContainer(
          child: Form(
            child: TextFormField(
              textInputAction: textInputAction,
              onChanged: onChanged,
              enabled: enabled ?? true,
              validator: validator,
              onTap: onTap,
              onFieldSubmitted: onFieldSubmitted,
              readOnly: onTap != null,
              maxLines: maxLines,
              style:
                  const TextStyle(color: Colors.black, fontSize: FontSize.s14),
              keyboardType: inputType ?? TextInputType.text,
              decoration: InputDecoration(
                  suffixIcon: icon != null
                      ? Icon(
                          icon,
                        )
                      : const Text(""),

                  // labelStyle:  TextStyle(color: Colors.black,fontSize: 11.sp),
                  //
                  //
                  labelText: hintText,
                  helperText: helperText == null ? null : helperText!
                  //
                  // contentPadding: EdgeInsets.all(6.sp),
                  //
                  //
                  //
                  // hintStyle: TextStyle(color:Colors.black,fontSize: 11.sp),
                  //
                  // border: InputBorder.none,
                  ),
            ),
          ),
        ));
  }
}
