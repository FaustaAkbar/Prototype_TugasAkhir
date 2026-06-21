import 'package:redux/redux.dart';
import 'app_state.dart';
import 'reducer.dart';

Store<AppState> createStore() {
  return Store<AppState>(
    appReducer,
    initialState: AppState.initial(),
  );
}
