import 'package:flutter/material.dart';

import 'EventCategory.dart';
import 'EventList.dart';
import 'SearchBox.dart';

class EventListPage extends StatelessWidget {
  const EventListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.only(left: 16.0),
          child: CircleAvatar(child: FlutterLogo()),
        ),
        title: Text('Exokames Demo',
            style: Theme.of(context).textTheme.titleMedium),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: Column(
          children: const [
            SearchBox(),
            SizedBox(height: 16),
            EventCategory(activeCategory: 'all'),
            SizedBox(height: 16),
            Expanded(
              child: EventList(),
            ),
          ],
        ),
      ),
    );
  }
}
