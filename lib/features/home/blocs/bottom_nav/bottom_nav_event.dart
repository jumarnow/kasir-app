part of 'bottom_nav_bloc.dart';

sealed class BottomNavEvent extends Equatable {
  const BottomNavEvent();

  @override
  List<Object> get props => [];
}

class TabBottomNavEvent extends BottomNavEvent {
  final int index;
  const TabBottomNavEvent(this.index);

  @override
  List<Object> get props => [index];
}
