import 'package:flutter/material.dart';
import 'package:wtew/features/talks/domain/entities/note.dart';
import 'package:wtew/features/talks/presentation/views/timeline/pages/note/note_view.dart';

class TimelineNoteView extends StatelessWidget {
  const TimelineNoteView({Key? key, required this.notes}) : super(key: key);

  final List<Note> notes;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Notes')),
      body: NoteView(notes: notes),
    );
  }
}
