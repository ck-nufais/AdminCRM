part of 'layout_bloc.dart';

@immutable
sealed class LayoutState {}

final class LayoutInitial extends LayoutState {}
final class LayoutMenuUpdate extends LayoutState {
  int selectedIndex ;
  LayoutMenuUpdate(this.selectedIndex);
}
