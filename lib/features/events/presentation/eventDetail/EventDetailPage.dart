import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

import '../../../../widgets/PositionedCTAButton.dart';
import '../eventList/model/Event.dart';
import 'EventSection.dart';
import 'SliverImageAppBar.dart';

@RoutePage()
class EventDetailPage extends StatelessWidget {
  const EventDetailPage({Key? key, required this.event}) : super(key: key);

  final Event event;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: false,
        child: Stack(
          children: [
            CustomScrollView(
              slivers: [
                SliverImageAppBar(event: event),
                EventSection(event: event),
              ],
            ),
            // Padding(
            //   padding: const EdgeInsets.all(16.0),
            //   child: Column(
            //     children: [
            //       EventSection(event: event),
            //     ],
            //   ),
            // ),
            PositionedCTAButton(text: 'Book Now', onPressed: () {})
          ],
        ),
      ),
    );
  }
}
