import 'package:flutter/material.dart';

Container character(String title, Color? backgroundColor, Color? textColor) {
  return Container(
    margin: const EdgeInsets.all(9),
    decoration: BoxDecoration(
        color: backgroundColor, borderRadius: BorderRadius.circular(8)),
    child: Padding(
      padding: const EdgeInsets.all(9.0),
      child: Text(
        title,
        style: TextStyle(
          color: textColor,
          fontWeight: FontWeight.w500,
        ),
      ),
    ),
  );
}
