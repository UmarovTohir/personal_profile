import 'package:flutter/material.dart';

Container reports(
  String title,
  String description,
  Icon icon,
  Color backgroundColor,
  Color mainColor,
) {
  return Container(
    margin: EdgeInsets.all(10),
    width: 165,
    height: 172,
    decoration: BoxDecoration(
      color: backgroundColor,
      borderRadius: BorderRadius.circular(15),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                right: 10,
                bottom: 5,
              ),
              child: Icon(
                Icons.bookmark_sharp,
                size: 30,
                color: mainColor,
              ),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(right: 100, left: 20),
          child: icon,
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 20,
            top: 5,
          ),
          child: Text(
            title,
            style: const TextStyle(
              color: Color(0xFFCF5098),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(12),
          child: Text(
            description,
            style: const TextStyle(
              color: Color(0xFFEE97C8),
            ),
          ),
        )
      ],
    ),
  );
}
