import 'package:flutter/material.dart';

class EventCategoryItem extends StatelessWidget {
  const EventCategoryItem(
      {Key? key, required this.isActive, required this.text})
      : super(key: key);

  final bool isActive;
  final String text;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      decoration: BoxDecoration(
        color: isActive ? Colors.grey[200] : Colors.transparent,
        borderRadius: BorderRadius.circular(16),
      ),
      child: InkWell(
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Center(
            child: Text(
              text,
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: isActive ? Colors.black : Colors.grey,
                    fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
                  ),
            ),
          ),
        ),
      ),
    );
  }
}
