import 'package:flutter/material.dart';
import 'package:nova_design_system_flutter/components/NAccordion.dart';
import 'package:nova_design_system_flutter/components/NRadioButton.dart';

class RadioSamples extends StatefulWidget {
  const RadioSamples({super.key});

  @override
  State<RadioSamples> createState() => _RadioSamplesState();
}

class _RadioSamplesState extends State<RadioSamples> {
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
            NRadioButton(
              onTap: () {
                setState(() {
                  _isSelected = !_isSelected;
                });
              },
              label: 'Testing Status', selected: _isSelected,
            ),
            const SizedBox(
              height: 16,
            ),
            NRadioButton(
              onTap: () {
                setState(() {
                  _isSelected = !_isSelected;
                });
              },
              selected: _isSelected,
            ),
          ],
        ),
      ),
    );
  }
}
