import 'package:flutter/material.dart';
import 'package:wtew22/config/utils/app_colors.dart';
import 'package:wtew22/features/wetw22/domain/entities/note.dart';

class NoteDetailsView extends StatelessWidget {
  const NoteDetailsView({Key? key, required this.note}) : super(key: key);

  final Note note;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [buildSliverAppBar()];
        },
        body: ListView.builder(
          itemCount: note.description.length,
          itemBuilder: (context, index) => buildInfo(
            context,
            note.description[index],
          ),
        ),
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
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        background: Hero(
          tag: note.id,
          child: Image.asset(
            note.imagePath,
            fit: BoxFit.fill,
          ),
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

  Widget buildInfo(BuildContext context, String description) {
    return Container(
      margin: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            text: TextSpan(
              children: [
                TextSpan(
                  text: "• $description",
                  style: const TextStyle(
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          buildDivider(
            (MediaQuery.of(context).size.width -
                        description.length.toDouble() * 15) >
                    0
                ? (MediaQuery.of(context).size.width -
                    description.length.toDouble() * 15)
                : 100,
          ),
        ],
      ),
    );
  }
}
