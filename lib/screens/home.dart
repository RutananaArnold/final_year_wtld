
import 'package:final_year_wtld/screens/devices/devices_page.dart';
import 'package:final_year_wtld/screens/incidents_page.dart';
import 'package:final_year_wtld/widgets/resueable_card_content.dart';
import 'package:final_year_wtld/widgets/reuseable_card.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(15),
      children: [
        // cards
        // 1st row
        Row(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      cardChild: const ReusableCardContent(
                        imageLink: Icons.analytics,
                        label: 'Analytics & Reports',
                      ),
                      action: () {
                        // Navigator.of(context).pushAndRemoveUntil(
                        //     MaterialPageRoute(
                        //         builder: (context) =>
                        //             const CommodityPricesScreen()),
                        //     (route) => true);
                      },
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      cardChild: const ReusableCardContent(
                        imageLink: Icons.devices_other,
                        label: 'Devices',
                      ),
                      action: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const DevicesPage()),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),

        // 2nd row
        Row(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      cardChild: const ReusableCardContent(
                        imageLink: Icons.notifications,
                        label: 'Notifications',
                      ),
                      action: () {
                        // Navigator.of(context).pushAndRemoveUntil(
                        //     MaterialPageRoute(
                        //         builder: (context) =>
                        //             const AlertPage()),
                        //     (route) => true);
                      },
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      cardChild: const ReusableCardContent(
                        imageLink: Icons.incomplete_circle_rounded,
                        label: 'Incidents',
                      ),
                      action: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const IncidentsPage()),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        // graphs

      ],
    );
  }
}
