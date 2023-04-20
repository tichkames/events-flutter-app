import 'package:injectable/injectable.dart';

import '../features/events/Events.dart';

@injectable
class EventRepository {
  Future<List<Event>> getEvents(String category) => Future.delayed(
        const Duration(seconds: 2),
        () => category == "all"
            ? events
            : events.where((ev) => ev.category == category).toList(),
      );
}
