import 'package:flutter/material.dart';
import 'package:wtew22/features/wetw22/domain/entities/note.dart';

class NoteDetailsView extends StatelessWidget {
  const NoteDetailsView({Key? key, required this.note}) : super(key: key);

  final Note note;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Note'),
      ),
      body: Center(
        child: Text(note.description),
      ),
    );
  }
}
