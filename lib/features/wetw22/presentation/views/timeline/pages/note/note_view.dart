import 'package:flutter/material.dart';
import 'package:wtew22/features/wetw22/domain/entities/note.dart';
import 'package:wtew22/features/wetw22/presentation/views/timeline/pages/note/widgets/note_card.dart';

// ignore: must_be_immutable
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

