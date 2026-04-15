import 'package:notes_app/data/dummy_data.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserSimplePreference {
  // where will have all the values which we have saved previously
  static SharedPreferences? preferences;

  // we need to initalized this and save value preferences only once when the app starts
  static Future initSharedPreferences() async {
    preferences = await SharedPreferences.getInstance();
  }

  // for saving the new notes
  static Future saveData(List<String> titles, List<String> notes) async {
    await preferences!.setStringList("titles", titles);
    await preferences!.setStringList("notes", notes);
  }

  // for getting the previously saved titles
  static void getData() {
    titles = preferences!.getStringList("titles") ?? [];
    notes = preferences!.getStringList("notes") ?? [];
  }
}
