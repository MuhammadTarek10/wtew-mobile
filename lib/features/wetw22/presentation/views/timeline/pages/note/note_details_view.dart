import 'package:flutter/material.dart';
import 'package:wtew22/config/utils/app_assets.dart';
import 'package:wtew22/config/utils/app_colors.dart';
import 'package:wtew22/features/wetw22/domain/entities/note.dart';

class NoteDetailsView extends StatelessWidget {
  const NoteDetailsView({Key? key, required this.note}) : super(key: key);

  final Note note;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          buildSliverAppBar(),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                buildDivider(315),
                buildDivider(315),
                buildDivider(315),
                buildDivider(315),
                buildDivider(315),
                buildDivider(315),
                buildDivider(315),
                buildDivider(315),
                buildDivider(315),
                buildDivider(315),
                buildDivider(315),
                buildDivider(315),
                buildDivider(315),
                buildDivider(315),
                buildDivider(315),
                buildDivider(315),
                buildDivider(315),
                buildDivider(315),
                buildDivider(315),
                buildDivider(315),
                buildDivider(315),
                buildDivider(315),
                buildDivider(315),
                buildDivider(315),
                buildDivider(315),
                buildDivider(315),
                buildDivider(315),
                buildDivider(315),
                buildDivider(315),
                buildDivider(315),
                buildDivider(315),
                buildDivider(315),
                buildDivider(315),
                buildDivider(315),
                buildDivider(315),
                buildDivider(315),
                buildDivider(315),
                buildDivider(315),
                buildDivider(315),
                buildDivider(315),
                buildDivider(315),
                buildDivider(315),
                buildDivider(315),
                buildDivider(315),
                buildDivider(315),
                buildDivider(315),
                buildDivider(315),
                buildDivider(315),
                buildDivider(315),
                buildDivider(315),
                buildDivider(315),
                buildDivider(315),
                buildDivider(315),
                buildDivider(315),
                buildDivider(315),
                buildDivider(315),
                buildDivider(315),
                buildDivider(315),
                buildDivider(315),
                buildDivider(315),
                buildDivider(315),
                buildDivider(315),
                buildDivider(315),
                buildDivider(315),
                buildDivider(315),
                buildDivider(315),
                buildDivider(315),
                buildDivider(315),
                buildDivider(315),
                buildDivider(315),
                buildDivider(315),
                buildDivider(315),
                buildDivider(315),
                buildDivider(315),
                buildDivider(315),
                buildDivider(315),
                buildDivider(315),
                buildDivider(315),
                buildDivider(315),
                buildDivider(315),
              ],
            ),
          )
        ],
      ),
    );
  }

  SliverAppBar buildSliverAppBar() {
    return SliverAppBar(
      expandedHeight: 600,
      pinned: true,
      stretch: true,
      backgroundColor: AppColors.secondaryColor,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        title: Text(
          note.title,
        ),
        background: Hero(
          tag: note.id,
          child: Image.asset(AppAssets.smuLogo),
        ),
      ),
    );
  }

  Divider buildDivider(double endIndent) {
    return Divider(
      height: 30,
      endIndent: endIndent,
      color: AppColors.primaryColor,
      thickness: 2,
    );
  }
}
