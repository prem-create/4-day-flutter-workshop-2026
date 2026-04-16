import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:notes_app/constants/app_colors.dart';
import 'package:notes_app/constants/app_spacing.dart';
import 'package:notes_app/data/data_model.dart';
import 'package:notes_app/local_storage/shared_preferences.dart';
import 'package:notes_app/pages/note_page.dart';
import 'package:notes_app/pages/utils/my_alert_dialog.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController nameController = TextEditingController();
  void saveNewData(String title, String note) {
    addNewEntry(title, note);
    setState(() {});
  }

  @override
  void initState() {
    UserSimplePreference.getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundPrimary,
      floatingActionButton: FloatingActionButton(
        shape: CircleBorder(),
        backgroundColor: AppColors.primary,
        onPressed: () async {
          final result = await Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return NotePage();
              },
            ),
          );

          if (result != null) {
            saveNewData(result["title"], result["note"]);
          }
        },
        child: Icon(
          Icons.add_circle_outline_rounded,
          size: AppSpacing.xl,
          color: AppColors.textPrimary,
        ),
      ),
      appBar: AppBar(
        backgroundColor: AppColors.backgroundPrimary,
        leading: Icon(Icons.note_alt_rounded, color: AppColors.textPrimary),
        title: Text(
          "Notes",
          style: TextStyle(
            color: AppColors.primary,
            fontWeight: FontWeight.bold,
          ),
        ),
        titleSpacing: 0.0,
        actions: [Icon(Icons.more_vert_sharp, color: AppColors.textPrimary)],
        actionsPadding: EdgeInsets.only(right: AppSpacing.sm),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(AppSpacing.md),
          child: titles.isEmpty
              ? Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Lottie.asset("assets/animations/nothing_to_show.json"),
                      Text(
                        textAlign: TextAlign.center,
                        "Nothing to show\nTry adding a new task",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: AppColors.textPrimary,
                        ),
                      ),
                    ],
                  ),
                )
              : ListView.builder(
                  itemCount: titles.length,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: AppSpacing.sm,
                    ),
                    child: GestureDetector(
                      onTap: () async {
                        final result = await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => NotePage(
                              title: titles[index],
                              note: notes[index],
                            ),
                          ),
                        );

                        if (result != null) {
                          editExistingData(
                            index,
                            result["title"],
                            result["note"],
                          );
                          setState(() {});
                        }
                      },
                      child: Card(
                        color: AppColors.backgroundSecondary,
                        elevation: 20,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusGeometry.circular(
                            AppSpacing.curve,
                          ),
                          side: BorderSide(color: Colors.white10),
                        ),
                        child: ListTile(
                          trailing: IconButton(
                            onPressed: () => showDialog(
                              context: context,
                              builder: (context) => MyAlertDialog(
                                color: Colors.red,
                                text: "Are you sure, you want to delete this??",
                                voidCallback: () {
                                  deleteEntry(index);
                                  setState(() {});
                                  Navigator.pop(context);
                                },
                              ),
                            ),
                            icon: Icon(
                              Icons.delete,
                              color: AppColors.textPrimary,
                            ),
                          ),
                          title: Text(
                            titles[index],
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: AppColors.textPrimary,
                            ),
                          ),
                          subtitle: Text(
                            notes[index],
                            maxLines: 4,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 16,
                              color: AppColors.textSecondary,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
        ),
      ),
    );
  }
}
