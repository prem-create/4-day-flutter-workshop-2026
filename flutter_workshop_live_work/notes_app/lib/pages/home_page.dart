import 'package:flutter/material.dart';
import 'package:notes_app/constants/app_colors.dart';
import 'package:notes_app/constants/app_spacing.dart';
import 'package:notes_app/data/dummy_data.dart';
import 'package:notes_app/pages/notes_view_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          //data saved which came from the add screen
          final result = await Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return NotesViewPage();
              },
            ),
          );

          if (result != null) {
            addNewEntry(result["title"], result["note"]);
            setState(() {});
          }
        },
        child: Icon(Icons.add),
      ),
      backgroundColor: AppColors.backgroundPrimary,
      appBar: AppBar(
        backgroundColor: AppColors.backgroundPrimary,
        title: Text("Notes", style: TextStyle(color: AppColors.primary)),
        leading: Icon(Icons.note_add_sharp, color: AppColors.textPrimary),
        titleSpacing: -10,
        actions: [Icon(Icons.more_vert, color: AppColors.textPrimary)],
      ),
      body: ListView.builder(
        itemCount: titles.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () async {
              final result = await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return NotesViewPage(index: index);
                  },
                ),
              );

              if (result != null) {
                //edit function call
                editExistingData(index, result["title"], result["note"]);
                //rebuild ui with new values
                setState(() {});
              }
            },
            child: Card(
              elevation: 20,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(AppSpacing.curve),
                side: BorderSide(color: AppColors.textPrimary),
              ),
              color: AppColors.backgroundSecondary,
              child: ListTile(
                trailing: IconButton(
                  onPressed: () {
                    deleteEntry(index);
                    setState(() {});
                  },


                  
                  icon: Icon(Icons.delete,color: Colors.red,),
                ),
                title: Text(
                  titles[index],
                  style: TextStyle(fontSize: 32, color: AppColors.textPrimary),
                ),
                subtitle: Text(
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  notes[index],
                  style: TextStyle(
                    fontSize: 18,
                    color: AppColors.textSecondary,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
