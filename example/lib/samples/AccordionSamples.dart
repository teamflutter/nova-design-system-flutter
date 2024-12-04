import 'package:flutter/material.dart';
import 'package:nova_design_system_flutter/components/NAccordion.dart';

class AccordionSamples extends StatelessWidget {
  const AccordionSamples({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: const Color(0xFFF5F5F5),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            NAccordion(
              header: 'Accordion Text Sample',
              hiddenContent: Container(
                height: 50,
                color: Colors.orange,
              ),
              style: const AccordionStyle(),
            ),
            const SizedBox(
              height: 16,
            ),
            NAccordion(
              header: 'Accordion Text Sample',
              hiddenContent: Container(
                height: 50,
                color: Colors.orange,
              ),
              style: const AccordionStyle(
                  prefixIcon: Icon(Icons.ac_unit_rounded),
                  textStyle: AccordionTextStyle.xl),
            ),
            const SizedBox(
              height: 16,
            ),
            NAccordion(
              header: 'Accordion Text Sample',
              hiddenContent: Container(
                height: 50,
                color: Colors.orange,
              ),
              style: const AccordionStyle(),
            ),
            const SizedBox(
              height: 16,
            ),
            NAccordion(
              header: 'Accordion Text Sample',
              hiddenContent: Container(
                height: 50,
                color: Colors.orange,
              ),
              style: const AccordionStyle(
                  verticalPadding: 16,
                  horizontalPadding: 16,
                  textStyle: AccordionTextStyle.xl,
                  rightExpandIcon: Icon(Icons.arrow_downward),
                  borderRadius: 16,prefixIcon: Icon(Icons.arrow_downward)),
            ),
          ],
        ),
      ),
    );
  }
}
