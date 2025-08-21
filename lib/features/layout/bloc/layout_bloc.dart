import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'layout_event.dart';
part 'layout_state.dart';

class LayoutBloc extends Bloc<LayoutEvent, LayoutState> {
  LayoutBloc() : super(LayoutInitial()) {
    on<NavMenu>(_onMenuChoose);
  }
}
void _onMenuChoose (NavMenu event,Emitter<LayoutState> emit) {
     emit(LayoutMenuUpdate(event.index));
    }