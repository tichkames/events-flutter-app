import 'package:flutter/material.dart';

import 'EventCategoryItem.dart';
import 'model/Mock.dart';

class EventCategory extends StatelessWidget {
  const EventCategory({Key? key, required this.activeCategory})
      : super(key: key);

  final String activeCategory;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: SizedBox(
        height: 40.0,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return EventCategoryItem(
              isActive: categories[index] == activeCategory,
              text: categories[index],
            );
          },
        ),
      ),
    );
  }
}
