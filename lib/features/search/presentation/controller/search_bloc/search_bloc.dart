import 'package:bloc/bloc.dart';
import 'package:task1/features/search/presentation/controller/search_bloc/search_event.dart';
import 'package:task1/features/search/presentation/controller/search_bloc/search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc() : super(const SearchState()) {
    on<SearchEvent>((event, emit) {});
  }
}
