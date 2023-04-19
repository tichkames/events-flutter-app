import 'package:flutter/material.dart';

import '../eventList/model/Event.dart';

class SliverImageAppBar extends StatelessWidget {
  const SliverImageAppBar({Key? key, required this.event}) : super(key: key);

  final Event event;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      leading: IconButton(
        icon: const Icon(Icons.arrow_back_rounded),
        onPressed: () => Navigator.of(context).pop(),
      ),
      expandedHeight: MediaQuery.of(context).size.height * 0.3,
      flexibleSpace: Image.asset(
        event.image,
        fit: BoxFit.cover,
      ),
    );
  }
}
