import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../repository/EventRepository.dart';
import '../Events.dart';

part 'EventCubit.freezed.dart';
part 'EventState.dart';

@injectable
class EventCubit extends Cubit<EventState> {
  EventCubit(this._eventRepository) : super(const EventState.initial()) {
    _onFirstLoad();
  }

  final EventRepository _eventRepository;

  void _onFirstLoad() async {
    emit(const EventState.loading());
    final events = await _eventRepository.getEvents('all');
    emit(EventState.loaded(events));
  }

  void onChangeCategory(String category) async {
    emit(const EventState.loading());
    final events = await _eventRepository.getEvents(category);
    emit(EventState.loaded(events));
  }
}
