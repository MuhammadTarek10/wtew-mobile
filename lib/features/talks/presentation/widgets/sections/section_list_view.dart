import 'package:flutter/material.dart';
import 'package:wtew/config/utils/app_media_query.dart';
import 'package:wtew/features/talks/domain/entities/sections.dart';
import 'package:wtew/features/talks/presentation/widgets/section_card.dart';
import 'package:wtew/features/talks/presentation/widgets/sections/section_animated_scroll_view.dart';

class SecionListView extends StatelessWidget {
  const SecionListView({
    Key? key,
    required this.sections,
  }) : super(key: key);

  final List<BaseSection> sections;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: sections.length,
      separatorBuilder: (context, index) =>
          Divider(height: context.height * 0.005),
      itemBuilder: (context, index) {
        final section = sections[index];
        return SectionAnimatedScrollView(
          child: SectionCard(section: section),
        );
      },
    );
  }
}
