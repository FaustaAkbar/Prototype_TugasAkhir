import 'package:redux/redux.dart';
import '../models/model.dart';
import '../services/api_service.dart';
import 'actions.dart';
import 'app_state.dart';

List<MovieModel> allMovies = [];
int currentIndex = 0;
const int addmovies = 100;

Future<void> fetchMovies(
  Store<AppState> store,
) async {
  try {
    store.dispatch(
      SetLoadingAction(true),
    );
    allMovies = await ApiService.fetchMovies(25);
    datamovies(store);
  } finally {
    store.dispatch(
      SetLoadingAction(false),
    );
  }
}

void datamovies(
  Store<AppState> store,
) {
  if (currentIndex >= allMovies.length) {
    return;
  }
  int nextIndex = currentIndex + addmovies;
  if (nextIndex > allMovies.length) {
    nextIndex = allMovies.length;
  }
  store.dispatch(
    MoviesAction(
      allMovies.sublist(
        currentIndex,
        nextIndex,
      ),
    ),
  );
  currentIndex = nextIndex;
}
