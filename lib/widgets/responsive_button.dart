import 'package:flutter/material.dart';
import 'package:sample/misc/my_colors.dart';

class ResponsiveButton extends StatelessWidget {
  bool? isResponsive;
  double? width;

  ResponsiveButton({Key? key, this.isResponsive = false, this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: const Icon(
        Icons.arrow_right_alt,
        color: Colors.white,
        size: 30,
      ),
      style: TextButton.styleFrom(
        backgroundColor: MyColors.primary,
        minimumSize: const Size(112,48),
      ),
    );
  }
}
