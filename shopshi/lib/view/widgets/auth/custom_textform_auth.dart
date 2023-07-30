import 'package:flutter/material.dart';
import 'package:shopshi/core/constant/color.dart';

class CustomTextformAuth extends StatelessWidget {
  final String labelText;
  final String hintText;
  final IconData iconData;
  final TextEditingController? mycontroller;
  final String? Function(String?)? valid;
  final bool isNumber;
  final bool? secure;
  final void Function()? onTapIcon;
  const CustomTextformAuth({
    Key? key,
    required this.labelText,
    required this.hintText,
    required this.iconData,
    this.mycontroller,
    this.valid,
    required this.isNumber,
    this.secure,
    this.onTapIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: TextFormField(
        keyboardType: isNumber
            ? const TextInputType.numberWithOptions(decimal: true)
            : TextInputType.text,
        validator: valid,
        obscureText: secure == null || secure == false ? false : true,
        controller: mycontroller,
        decoration: InputDecoration(focusColor: AppColor.primaryColor,
            floatingLabelBehavior: FloatingLabelBehavior.always,
            contentPadding:
                const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
            label: Text(
              labelText,
              style: const TextStyle(fontSize: 20),
            ),
            hintText: hintText,
            hintStyle: const TextStyle(fontSize: 15),
            suffixIcon: InkWell(
              onTap: onTapIcon,
              child: Icon(iconData),
            ),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(30))),
      ),
    );
  }
}
