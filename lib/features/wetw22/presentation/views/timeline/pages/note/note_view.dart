import 'package:flutter/material.dart';
import 'package:wtew22/config/app_routes.dart';
import 'package:wtew22/features/wetw22/domain/entities/note.dart';

class NoteView extends StatelessWidget {
  NoteView({Key? key, required this.notes}) : super(key: key);

  final List<Note> notes;

  var currentIdx = 0;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1.0,
      ),
      itemCount: notes.length,
      itemBuilder: (context, index) => NoteCard(note: notes[index]),
    );
  }
}

class NoteCard extends StatelessWidget {
  const NoteCard({Key? key, required this.note}) : super(key: key);

  final Note note;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, AppRoutes.noteDetailRoute,
              arguments: note);
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              note.title,
              style: Theme.of(context).textTheme.headline6,
            ),
            Text(
              note.description,
              style: Theme.of(context).textTheme.subtitle1,
            ),
          ],
        ),
      ),
    );
  }
}
