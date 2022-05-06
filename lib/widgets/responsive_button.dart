import 'package:flutter/material.dart';
import 'package:sample/misc/my_colors.dart';
import 'package:sample/widgets/texts.dart';

class ResponsiveButton extends StatelessWidget {
  bool? isResponsive;
  double? width;

  ResponsiveButton({Key? key, this.isResponsive = false, this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: TextButton(
        onPressed: () {},
        child: Row(
          mainAxisAlignment: isResponsive == true
              ? MainAxisAlignment.spaceBetween
              : MainAxisAlignment.center,
          children: [
            isResponsive == true
                ? H2Text(
                    text: '  Place order now',
                    color: Colors.white,
                  )
                : const SizedBox(),
            const Icon(
              Icons.arrow_right_rounded,
              color: Colors.white,
              size: 30,
            ),
          ],
        ),
        style: TextButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
          backgroundColor: MyColors.primary,
          fixedSize: Size(isResponsive == true ? double.maxFinite : 112, 48),
        ),
      ),
    );
  }
}
