import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final IconData leftIcon;
  final IconData rightIcon;
  final Function? leftCallback;

  CustomAppBar(this.rightIcon, this.leftIcon, {this.leftCallback});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          top: 30, left: 25, right: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: leftCallback != null ? leftCallback!() : null,
              child: _buildIcon(leftIcon),
          ),
          _buildIcon(rightIcon)
        ],
      ),
    );
  }

  Container _buildIcon(IconData icon) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.white),
      child: Icon(icon),
    );
  }
}
