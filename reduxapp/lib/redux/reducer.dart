import 'app_state.dart';
import 'actions.dart';

AppState appReducer(AppState state, dynamic action) {
  if (action is SetLoadingAction) {
    return state.copyWith(isLoading: action.isLoading);
  }

  if (action is MoviesAction) {
    return state.copyWith(movies: [...state.movies, ...action.movies]);
  }

  return state;
}
