import 'package:flutter/material.dart';

class IncidentsPage extends StatefulWidget {
  const IncidentsPage({super.key});

  @override
  State<IncidentsPage> createState() => _IncidentsPageState();
}

class _IncidentsPageState extends State<IncidentsPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        padding: const EdgeInsets.all(15),
        children: [
          SizedBox(
            height: size.height * 2,
            child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return const Card(
                    elevation: 2,
                    child: Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Text("K0001 |  9:30AM | kAWEMPE"),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
