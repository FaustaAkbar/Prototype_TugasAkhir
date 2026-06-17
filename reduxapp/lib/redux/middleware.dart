import 'package:redux/redux.dart';
import '../services/api_service.dart';
import 'app_state.dart';
import 'actions.dart';

List<Middleware<AppState>> createMiddleware() {
  return [
    TypedMiddleware<AppState, FetchMoviesAction>(
      fetchMovies,
    ).call,
  ];
}

Future<void> fetchMovies(
  Store<AppState> store,
  action,
  NextDispatcher next,
) async {
  next(action);
  store.dispatch(SetLoadingAction(true));
  final movies = await ApiService.fetchMovies(action.jumlahFilm);
  store.dispatch(SetMoviesAction(movies));
  store.dispatch(SetLoadingAction(false));
}
