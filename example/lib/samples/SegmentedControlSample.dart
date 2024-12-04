import 'package:flutter/material.dart';
import 'package:nova_design_system_flutter/components/NAccordion.dart';
import 'package:nova_design_system_flutter/components/NRadioButton.dart';
import 'package:nova_design_system_flutter/components/NSegmentedControl.dart';

class SegmentedControlSamples extends StatefulWidget {
  const SegmentedControlSamples({super.key});

  @override
  State<SegmentedControlSamples> createState() => _SegmentedControlSamplesState();
}

class _SegmentedControlSamplesState extends State<SegmentedControlSamples> {
  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: const Color(0xFFF5F5F5),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SegmentedControl(
              items: [
                SegmentedControlItem(text: "Tab 1"),
                SegmentedControlItem(text: "Tab 2"),
                SegmentedControlItem(text: "Tab 3"),
              ],
              selectedIndex: 0,
              onIndexChanged: (index) {
                print("Selected index: $index");
              },
              size: SegmentedControlSize.md,
              controlBgColor: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}
