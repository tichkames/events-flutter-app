import 'package:flutter/material.dart';
import 'package:playground_new/extensions/EventExtension.dart';

import 'model/Event.dart';

class EventListItem extends StatelessWidget {
  const EventListItem({Key? key, required this.event}) : super(key: key);

  final Event event;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: SizedBox(
            width: 70.0,
            child: AspectRatio(
              aspectRatio: 0.6,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(
                  event.image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(event.presentableDate(),
                    style: Theme.of(context).textTheme.bodySmall),
                Text(
                  event.name,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                const SizedBox(height: 8),
                Text(event.location,
                    style: Theme.of(context).textTheme.bodySmall),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 16.0),
          child: Column(
            children: [
              Text('${event.cost}'),
              const SizedBox(height: 8),
              Text(
                event.discountCost?.toString() ?? '',
                style: Theme.of(context)
                    .textTheme
                    .bodySmall
                    ?.copyWith(decoration: TextDecoration.lineThrough),
              ),
            ],
          ),
        )
      ],
    );
  }
}
