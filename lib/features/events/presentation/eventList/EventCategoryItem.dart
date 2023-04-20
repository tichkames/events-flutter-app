import 'package:flutter/material.dart';

class EventCategoryItem extends StatelessWidget {
  const EventCategoryItem(
      {Key? key,
      required this.isActive,
      required this.text,
      required this.onTap})
      : super(key: key);

  final bool isActive;
  final String text;
  final Function(String category) onTap;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      decoration: BoxDecoration(
        color: isActive ? Colors.indigo[300] : Colors.transparent,
        borderRadius: BorderRadius.circular(16),
      ),
      child: InkWell(
        onTap: () => onTap(text),
        borderRadius: BorderRadius.circular(16),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Center(
            child: Text(
              text,
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: isActive ? Colors.white : Colors.grey,
                    fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
                  ),
            ),
          ),
        ),
      ),
    );
  }
}
