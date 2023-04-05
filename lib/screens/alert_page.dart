import 'package:flutter/material.dart';

class AlertPage extends StatefulWidget {
  const AlertPage({super.key});

  @override
  State<AlertPage> createState() => _AlertPageState();
}

class _AlertPageState extends State<AlertPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ListView(
      padding: const EdgeInsets.all(15),
      children: [
        SizedBox(
          height: size.height * 2,
          child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return Card(
                  elevation: 2,
                  child: Column(
                    children: [
                      const Text("Device A001 has recorded an anomaly"),
                      ElevatedButton(
                          onPressed: () {}, child: const Text("view details"))
                    ],
                  ),
                );
              }),
        )
      ],
    );
  }
}
