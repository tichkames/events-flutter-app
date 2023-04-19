import '../features/events/presentation/eventList/model/Event.dart';

extension XEvent on Event {
  String presentableDate() =>
      endDate?.isNotEmpty ?? false ? '${startDate} - ${endDate}' : startDate;
}
