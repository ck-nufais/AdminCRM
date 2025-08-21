part of 'layout_bloc.dart';

@immutable
sealed class LayoutEvent {}

sealed class NavMenu extends LayoutEvent{
  int index;
  NavMenu(this.index);
}