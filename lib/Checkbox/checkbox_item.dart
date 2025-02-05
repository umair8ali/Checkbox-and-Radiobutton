import 'package:flutter/material.dart';

class CheckboxItem extends StatefulWidget {
  final String text;
  const CheckboxItem({super.key, required this.text});

  @override
  State<CheckboxItem> createState() => _CheckboxItemState();
}

class _CheckboxItemState extends State<CheckboxItem> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(widget.text),
        const Spacer(),
        IconButton(
          onPressed: () {
            setState(() {
              isSelected = !isSelected;
            });
          },
          icon: Icon(
            isSelected ? Icons.check_box : Icons.check_box_outline_blank,
          ),
        ),
      ],
    );
  }
}
