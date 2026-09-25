part of 'counter_cubit.dart';

@immutable
sealed class CounterState {}

final class CounterInitial extends CounterState {}

final class CounterIncreaseScore extends CounterState {}

final class ResetCounter extends CounterState {}

