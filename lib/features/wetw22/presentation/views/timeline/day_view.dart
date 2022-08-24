import 'package:flutter/material.dart';
import 'package:wtew22/features/wetw22/domain/entities/day.dart';
import 'package:wtew22/features/wetw22/presentation/views/timeline/pages/note/note_view.dart';
import 'package:wtew22/features/wetw22/presentation/views/timeline/pages/timeline_view.dart';

class DayView extends StatefulWidget {
  const DayView({Key? key, required this.day}) : super(key: key);

  final Day day;

  @override
  // ignore: no_logic_in_create_state
  State<DayView> createState() => _DayViewState(day: day);
}

class _DayViewState extends State<DayView> {
  _DayViewState({required this.day});

  late final PageController pageController;
  final Day day;
  var currentIdx = 0;

  late List<Widget> pages;
  var title = "Timeline";
  List<String> titles = ["Timeline", "Notes"];

  @override
  void initState() {
    super.initState();
    pages = [
      TimelineView(day: day),
      NoteView(notes: day.notes),
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
