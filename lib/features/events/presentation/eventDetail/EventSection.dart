import 'package:flutter/material.dart';

import '../../../../extensions/EventExtension.dart';
import '../eventList/model/Event.dart';

class EventSection extends StatelessWidget {
  const EventSection({Key? key, required this.event}) : super(key: key);

  final Event event;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    event.name,
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.bookmark_border_rounded))
              ],
            ),
            const SizedBox(height: 8.0),
            Text(
              event.presentableDate(),
              style: Theme.of(context).textTheme.bodySmall,
            ),
            Text(
              event.location,
              style: Theme.of(context).textTheme.bodySmall,
            ),
            const SizedBox(height: 16.0),
            Row(
              children: [
                Expanded(
                  child: Text(
                    'Price for 1 person',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ),
                if (event.discountCost != null)
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Text(
                      event.discountCost.toString(),
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall
                          ?.copyWith(decoration: TextDecoration.lineThrough),
                    ),
                  ),
                Text(
                  event.cost.toString(),
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
