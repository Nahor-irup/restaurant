import 'package:flutter/material.dart';
import 'package:restaurant/theme.dart';

class CustomRoundedButton extends StatelessWidget {
  final String label;
  final IconData? prefixIcon;

  const CustomRoundedButton({Key? key, required this.label, this.prefixIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 24, top: 10, right: 24, bottom: 7),
      decoration: BoxDecoration(
        color: CustomTheme.primaryColor,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Color(0x14F55A51),
            blurRadius: 7,
            offset: Offset(0, 8),
          ),
          BoxShadow(
            color: Color(0x1FF55A51),
            blurRadius: 2.5,
            offset: Offset(0, 2),
          ),
          BoxShadow(
            color: Color(0x14F55A51),
            blurRadius: 1.5,
            offset: Offset(0, 1),
          ),
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (prefixIcon != null)
            Container(
              margin: const EdgeInsets.only(right: 8,bottom: 4),
              child: Icon(
                prefixIcon,
                color: Colors.white,
                size: 16,
              ),
            ),
          Text(
            label,
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.bold,
              height: 1,
            ),
          ),
        ],
      ),
    );
  }
}
