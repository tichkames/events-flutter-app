import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:playground_new/di/Di.dart';

import '../../cubit/EventCubit.dart';
import 'EventCategory.dart';
import 'EventList.dart';
import 'SearchBox.dart';

@RoutePage()
class EventListPage extends StatefulWidget {
  const EventListPage({Key? key}) : super(key: key);

  @override
  State<EventListPage> createState() => _EventListPageState();
}

class _EventListPageState extends State<EventListPage> {
  late ValueNotifier<String> _activeCategory;

  @override
  void initState() {
    super.initState();
    _activeCategory = ValueNotifier('all');
  }

  @override
  void dispose() {
    super.dispose();
    _activeCategory.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<EventCubit>(),
      child: Scaffold(
        appBar: AppBar(
          leading: const Padding(
            padding: EdgeInsets.only(left: 16.0),
            child: CircleAvatar(child: FlutterLogo()),
          ),
          title: Text('Exokames Demo',
              style: Theme.of(context).textTheme.titleMedium),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: Column(
            children: [
              const SearchBox(),
              const SizedBox(height: 16),
              ValueListenableBuilder(
                  valueListenable: _activeCategory,
                  builder: (context, value, _) {
                    return EventCategory(
                      activeCategory: value,
                      onCategoryTap: (category) {
                        _activeCategory.value = category;
                        context.read<EventCubit>().onChangeCategory(category);
                      },
                    );
                  }),
              const SizedBox(height: 16),
              const Expanded(
                child: EventList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
