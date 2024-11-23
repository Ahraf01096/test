import 'package:shared_preferences/shared_preferences.dart';


abstract class BaseStoriesLocalDataSource {
}

class StoriesLocalDataSource
    implements BaseStoriesLocalDataSource {
  final SharedPreferences sharedPreferences;

  StoriesLocalDataSource(this.sharedPreferences);

}