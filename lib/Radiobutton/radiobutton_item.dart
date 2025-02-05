import 'package:flutter/material.dart';

class RadiobuttonItem extends StatelessWidget {
  final String text; // The label for the radio button
  final int index; // The unique index of the radio button
  final int selectedIndex; // The currently selected radio button index
  final Function(int) onSelected; // Callback function when a button is selected

  // These parameters allow the parent widget to control and update the state.
  const RadiobuttonItem({
    super.key,
    required this.text,
    required this.index,
    required this.selectedIndex,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(text), // Displays the radio button text
        const Spacer(),
        IconButton(
          onPressed: () {
            onSelected(index); // Calls the function when the radio button is tapped
          },
          icon: Icon(
            selectedIndex == index
                ? Icons.radio_button_on // If selected, show filled radio button
                : Icons.radio_button_off, // Otherwise, show empty radio button
          ),
        ),
      ],
    );
  }
}
