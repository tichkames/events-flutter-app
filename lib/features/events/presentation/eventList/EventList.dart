import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../routes/app_router.dart';
import 'EventListItem.dart';
import 'model/Mock.dart';

class EventList extends StatelessWidget {
  const EventList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () => AutoRouter.of(context)
              .push(EventDetailRoute(event: events[index])),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: EventListItem(event: events[index]),
          ),
        );
      },
      separatorBuilder: (context, index) {
        return Divider(
          indent: 16.0,
          endIndent: 16.0,
          color: Colors.grey[300],
          height: 0,
        );
      },
      itemCount: events.length,
    );
  }
}
