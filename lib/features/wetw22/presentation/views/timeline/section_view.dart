import 'package:flutter/material.dart';
import 'package:wtew22/config/utils/app_colors.dart';
import 'package:wtew22/features/wetw22/domain/entities/sections.dart';
import 'package:wtew22/features/wetw22/presentation/views/timeline/pages/note/note_view.dart';
import 'package:wtew22/features/wetw22/presentation/views/timeline/pages/timeline_view.dart';

class SectionView extends StatefulWidget {
  const SectionView({Key? key, required this.section}) : super(key: key);

  final BaseSection section;

  @override
  // ignore: no_logic_in_create_state
  State<SectionView> createState() => _SectionViewState(section: section);
}

class _SectionViewState extends State<SectionView> {
  _SectionViewState({required this.section});

  late final PageController pageController;
  final BaseSection section;
  var currentIdx = 0;

  late List<Widget> pages;
  var title = "Timeline";
  List<String> titles = ["Timeline", "Notes"];

  @override
  void initState() {
    super.initState();
    pages = [
      TimelineView(section: section),
      NoteView(notes: section.sectionNotes),
    ];
    pageController = PageController(initialPage: currentIdx);
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  void onTap(int index) {
    setState(() {
      currentIdx = index;
      title = titles[index];
    });
    pageController.animateToPage(
      currentIdx,
      duration: const Duration(milliseconds: 250),
      curve: Curves.easeIn,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      backgroundColor: AppColors.accentColor,
      body: PageView(
        controller: pageController,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            label: 'Timeline',
            icon: Icon(Icons.calendar_today),
          ),
          BottomNavigationBarItem(
            label: 'Notes',
            icon: Icon(Icons.note),
          ),
        ],
        currentIndex: currentIdx,
        onTap: onTap,
      ),
    );
  }
}
