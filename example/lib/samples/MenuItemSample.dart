import 'package:flutter/material.dart';
import 'package:nova_design_system_flutter/components/NMenuItem.dart';

class MenuItemSamples extends StatelessWidget {
  const MenuItemSamples({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: const Color(0xFFF5F5F5),
      body:  SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const NMenuItem(
              label: "Test Menu Item",
              leading: Icon(Icons.ac_unit),
            ),
            const SizedBox(
              height: 16,
            ),
            NMenuItem(
              label: "Test Menu Item",
              leading: const Icon(Icons.ac_unit),
              onTap: () {
                print("Default item tapped");
              },
            ),
            const SizedBox(
              height: 16,
            ),
            const NMenuItem(
              label: "Test Menu Item",
              selected: true,
              leading: Icon(Icons.ac_unit),
            ),
            const SizedBox(
              height: 16,
            ),
            const NMenuItem(
              label: "Test Menu Item 2",
              leading: Icon(Icons.ac_unit),

              trailing: Icon(Icons.access_time_outlined),
            ),
            const SizedBox(
              height: 16,
            ),
            const NMenuItem(
                label: "Test Menu Item 3 test test test test test test",
                multiline: true,
                leading: Icon(Icons.ac_unit),
                trailing: Icon(Icons.access_time_outlined)),
            const SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
    );
  }
}
