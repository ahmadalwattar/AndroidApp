import 'package:flutter/material.dart';
import 'package:shopshi/core/constant/color.dart';

class CustomBtnAuth extends StatelessWidget {
  final String textbtn;
  final void Function()? onPressed;
  const CustomBtnAuth({
    Key? key,
    required this.textbtn,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: MaterialButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        color: AppColor.primaryColor,
        minWidth: 200,
        padding: const EdgeInsets.all(2),
        textColor: AppColor.white,
        onPressed: onPressed,
        child: Text(
          textbtn,
          style: const TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
