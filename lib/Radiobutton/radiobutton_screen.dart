import 'package:flutter/material.dart';
import 'package:checkbox/Radiobutton/radiobutton_item.dart';

class RadiobuttonScreen extends StatefulWidget {
  const RadiobuttonScreen({super.key});

  @override
  State<RadiobuttonScreen> createState() => _RadiobuttonScreenState();
}

class _RadiobuttonScreenState extends State<RadiobuttonScreen> {
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Radiobutton Screen'),
        backgroundColor: Colors.purple,
        foregroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
        actions: const [
          Icon(
            Icons.more_vert,
            color: Colors.white,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            RadiobuttonItem(
              text: 'One',
              index: 0,
              selectedIndex: selectedIndex,
              onSelected: (index) {
                setState(() {
                  selectedIndex = index; // Updates the selected radio button
                });
              },
            ),
            RadiobuttonItem(
              text: 'Two',
              index: 1,
              selectedIndex: selectedIndex,
              onSelected: (index) {
                setState(() {
                  selectedIndex = index;
                });
              },
            ),
            RadiobuttonItem(
              text: 'Three',
              index: 2,
              selectedIndex: selectedIndex,
              onSelected: (index) {
                setState(() {
                  selectedIndex = index;
                });
              },
            ),
            RadiobuttonItem(
              text: 'Four',
              index: 3,
              selectedIndex: selectedIndex,
              onSelected: (index) {
                setState(() {
                  selectedIndex = index;
                });
              },
            ),
            RadiobuttonItem(
              text: 'Five',
              index: 4,
              selectedIndex: selectedIndex,
              onSelected: (index) {
                setState(() {
                  selectedIndex = index;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
