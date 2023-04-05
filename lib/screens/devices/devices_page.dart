import 'package:final_year_wtld/screens/devices/device_detail.dart';
import 'package:final_year_wtld/widgets/input_field.dart';
import 'package:flutter/material.dart';

class DevicesPage extends StatefulWidget {
  const DevicesPage({super.key});

  @override
  State<DevicesPage> createState() => _DevicesPageState();
}

class _DevicesPageState extends State<DevicesPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Devices",
          style: TextStyle(
            fontSize: 14,
          ),
        ),
        actions: [
          ElevatedButton(onPressed: () {}, child: const Text("View on map"))
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(12.0),
        children: [
          const InputField(
            labelText: "Search",
            suffixIcon: Icon(Icons.search),
          ),
          SizedBox(
            height: size.height * 0.2,
            child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Column(
                      children: [
                        Wrap(
                          children: const [
                            Text(
                              "Device Name: ",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text("A002")
                          ],
                        ),
                        Wrap(
                          children: const [
                            Text(
                              "Location: ",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text("Ntinda")
                          ],
                        )
                      ],
                    ),
                    subtitle: Column(
                      children: [
                        Wrap(
                          children: const [
                            Text(
                              "Status: ",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text("Inactive")
                          ],
                        ),
                        Wrap(
                          children: const [
                            Text(
                              "Valve: ",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text("Operating")
                          ],
                        )
                      ],
                    ),
                    trailing: Icon(
                      Icons.graphic_eq_sharp,
                      size: size.height * 0.04,
                    ),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const DeviceDetail()),
                      );
                    },
                  );
                }),
          )
        ],
      ),
    );
  }
}
