import 'package:notes_app/local_storage/shared_preferences.dart';

List<String> titles = [];

List<String> notes = [];


void addNewEntry(String title, String body) async {
  titles.add(title);
  notes.add(body);
  await UserSimplePreference.saveData(titles, notes);
}

Future<void> deleteEntry(int index) async {
  titles.removeAt(index);
  notes.removeAt(index);
  await UserSimplePreference.saveData(titles, notes);
}

Future<void> editExistingData(int index, String title, String note) async {
  titles[index] = title;
  notes[index] = note;
  await UserSimplePreference.saveData(titles, notes);
}
