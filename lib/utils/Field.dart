import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

OutlineInputBorder outlineBorder({required Color color}) {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(0),
    gapPadding: 0,
    borderSide: BorderSide(
      color: color,
      width: 1,
    ),
  );
}

Widget buildTextField({
  Icon? lineIcons,
  bool obscureText = false,
  bool ispassword = false,
  String? name,
  bool readOnly = false,
  bool status = false,
  Widget? iconButton,
  TextInputType textInputType = TextInputType.text,
  TextEditingController? controller,
}) {
  return Padding(
    padding: const EdgeInsets.all(6.0),
    child: TextFormField(
      cursorHeight: 5,
      textCapitalization: TextCapitalization.none,
      keyboardType: textInputType,
      keyboardAppearance: Brightness.light,
      readOnly: readOnly,
      controller: controller,
      obscureText: obscureText,
      // ignore: prefer_const_constructors
      style: TextStyle(
        fontWeight: FontWeight.w900,
        fontSize: 20,
      ),
      decoration: InputDecoration(
        enabledBorder: outlineBorder(color: Colors.grey.shade300),
        focusedBorder: outlineBorder(color: Colors.green),
        hintText: "$name",
        floatingLabelAlignment: FloatingLabelAlignment.start,
        border: InputBorder.none,
        prefixIcon: lineIcons,
        suffixIcon: ispassword ? iconButton : null,
      ),
    ),
  );
}
