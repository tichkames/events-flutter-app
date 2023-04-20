import '../../../../../generated/assets.gen.dart';
import 'Event.dart';

final categories = [
  'all',
  'art',
  'tech',
  'design',
  'music',
  'food',
  'sport',
  'other'
];

final events = [
  Event('Art Exhibition', Assets.images.event1Unsplash.path, '2021-09-01',
      '2021-09-30', 'New York', 100.0, 50.0, "art"),
  Event('Tech Conference', Assets.images.event2Unsplash.path, '2021-09-01',
      null, 'New York', 100.0, 50.0, "tech"),
  Event('Design Conference', Assets.images.event3Unsplash.path, '2021-09-01',
      '2021-09-30', 'New York', 100.0, 50.0, "design"),
  Event('Music Festival', Assets.images.event4Unsplash.path, '2021-09-01',
      '2021-09-30', 'New York', 100.0, null, "music"),
  Event('Food Festival', Assets.images.event5Unsplash.path, '2021-09-01', null,
      'New York', 100.0, 50.0, "art"),
  Event('Sport Event', Assets.images.event6Unsplash.path, '2021-09-01',
      '2021-09-30', 'New York', 100.0, null, "tech"),
];
