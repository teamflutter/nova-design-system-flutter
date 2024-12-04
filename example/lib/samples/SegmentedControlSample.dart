import 'package:flutter/material.dart';
import 'package:nova_design_system_flutter/components/NSegmentedControl.dart';

class SegmentedControlSamples extends StatefulWidget {
  const SegmentedControlSamples({super.key});

  @override
  State<SegmentedControlSamples> createState() =>
      _SegmentedControlSamplesState();
}

class _SegmentedControlSamplesState extends State<SegmentedControlSamples> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: const Color(0xFFFFFFFF),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            NSegmentedControl(
              items: [
                SegmentedControlItem(text: "Tab 1"),
                SegmentedControlItem(text: "Tab 2"),
                SegmentedControlItem(text: "Tab 3"),
              ],
              selectedIndex: 0,
              onIndexChanged: (index) {},
              size: SegmentedControlSize.md,
            ),
            const SizedBox(
              height: 16,
            ),
            NSegmentedControl(
              items: [
                SegmentedControlItem(text: "Label"),
                SegmentedControlItem(text: "Label"),
              ],
              selectedIndex: 0,
              onIndexChanged: (index) {},
              size: SegmentedControlSize.sm,
            ),
            const SizedBox(
              height: 16,
            ),
            NSegmentedControl(
              items: [
                SegmentedControlItem(icon: const Icon(Icons.ac_unit_rounded)),
                SegmentedControlItem(icon: const Icon(Icons.access_alarm)),
              ],
              selectedIndex: 0,
              onIndexChanged: (index) {},
              size: SegmentedControlSize.sm,
            ),
          ],
        ),
      ),
    );
  }
}
