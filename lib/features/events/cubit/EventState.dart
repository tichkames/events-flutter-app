part of 'EventCubit.dart';

@freezed
class EventState with _$EventState {
  const factory EventState.initial({
    @Default(false) bool isLoading,
    @Default('design') String category,
    @Default([]) List<Event> events,
  }) = _Initial;

  const factory EventState.loading({
    @Default(true) bool isLoading,
  }) = _Loading;

  const factory EventState.loaded(List<Event> events) = _Loaded;
}
