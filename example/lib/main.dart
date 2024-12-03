import 'package:flutter/material.dart';
import 'package:nova_design_system_flutter/theme/ResponsiveWrapper.dart';
import 'package:nova_design_system_flutter_example/samples/AvatarSamples.dart';

void main() {
  runApp(const ResponsiveWrapper( child: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Plugin example app'),
          ),
          body: Builder(
            builder: (BuildContext context) {
              return SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    FilledButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const AvatarSamples()));
                        },
                        child: const Text("Avatar"))
                  ],
                ),
              );
            },
          )),
    );
  }
}
