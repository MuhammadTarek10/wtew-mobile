import 'package:flutter/material.dart';
import 'package:wtew22/features/wetw22/domain/entities/note.dart';

class NoteView extends StatelessWidget {
  const NoteView({Key? key, required this.notes}) : super(key: key);

  final List<Note> notes;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Note'),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1.0,
        ),
        itemCount: notes.length,
        itemBuilder: ((context, index) {
          return Card(
            child: ListTile(
              title: Text(notes[index].title),
              subtitle: Text(notes[index].description),
            ),
          );
        }),
      ),
    );
  }
}
