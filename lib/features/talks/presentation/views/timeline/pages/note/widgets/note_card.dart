import 'package:flutter/material.dart';
import 'package:wtew22/config/app_routes.dart';
import 'package:wtew22/config/utils/app_colors.dart';

import 'package:wtew22/features/talks/domain/entities/note.dart';

class NoteCard extends StatelessWidget {
  const NoteCard({Key? key, required this.note}) : super(key: key);

  final Note note;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
      padding: const EdgeInsetsDirectional.all(4),
      decoration: BoxDecoration(
        color: AppColors.secondaryColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: InkWell(
        onTap: () => Navigator.pushNamed(
          context,
          AppRoutes.noteDetailRoute,
          arguments: note,
        ),
        child: GridTile(
          footer: Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 10),
            alignment: Alignment.bottomCenter,
            decoration: const BoxDecoration(
              color: AppColors.accentColor,
            ),
            child: Text(note.title),
          ),
          child: Hero(
            tag: note.id,
            child: Center(
              child: Image.asset(note.imagePath),
            ),
          ),
        ),
      ),
    );
  }
}
