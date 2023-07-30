import 'package:flutter/material.dart';
import 'package:shopshi/core/constant/color.dart';

class BtnLang extends StatelessWidget {
  final String textbtn;
  final void Function()? onPressed;
  const BtnLang({Key? key, required this.textbtn, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 100),
      width: double.infinity,
      child: MaterialButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        color: AppColor.primaryColor,
        textColor: AppColor.white,
        onPressed: onPressed,
        child: Text(
          textbtn,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
