import 'package:flutter/material.dart';

import 'Design.dart';
// import 'features/events/presentation/eventDetail/EventDetailListPage.dart';
import 'features/events/presentation/eventDetail/EventDetailPage.dart';
import 'features/events/presentation/eventList/model/Mock.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exokames Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(
        useMaterial3: true,
      ).copyWith(textTheme: poppins),
      home: EventDetailPage(event: events[0]),
    );
  }
}
