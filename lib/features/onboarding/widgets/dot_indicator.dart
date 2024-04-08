import 'package:flutter/material.dart';

class DotIndIndcator extends StatelessWidget {
  const DotIndIndcator({
    super.key,
    required this.pageNumber,
  });
  final int pageNumber;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        for (int i = 0; i < 2; i++)
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 5),
            width: 8,
            height: 8,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: i == pageNumber ? const Color(0xffF19F23) : Colors.grey),
          ),
      ],
    );
  }
}
