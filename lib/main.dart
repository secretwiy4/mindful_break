import 'package:flutter/material.dart';
import 'screens/study_tips_screen.dart';
import 'screens/add_activities_screen.dart';
import 'screens/reminder_screen.dart';
import 'screens/mood_tracker_screen.dart';
import 'screens/progress_reminder_screen.dart';
import 'screens/progress_overview_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xffD9F5ED),
        fontFamily: 'Sans-Serif',
      ),
      home: const MainNavigation(),
    );
  }
}

class MainNavigation extends StatefulWidget {
  const MainNavigation({super.key});

  @override
  State<MainNavigation> createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  int _currentIndex = 0;
  final PageController _pageController = PageController();

  void _onPageChanged(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  void _nextPage() {
    _pageController.nextPage(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> screens = [
      StudyTipsScreen(onNext: _nextPage),
      AddActivitiesScreen(onNext: _nextPage),
      ReminderScreen(onNext: _nextPage),
      MoodTrackerScreen(onNext: _nextPage),
      ProgressReminderScreen(onNext: _nextPage),
      ProgressOverviewScreen(),
    ];

    bool showBottomNav = _currentIndex >= 2;

    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: _onPageChanged,
        physics: const NeverScrollableScrollPhysics(),
        children: screens,
      ),
      bottomNavigationBar: showBottomNav
          ? BottomNavigationBar(
        currentIndex: (_currentIndex - 2).clamp(0, 4),
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: const Color(0xff3D5A50),
        unselectedItemColor: Colors.grey,
        selectedFontSize: 10,
        unselectedFontSize: 10,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Study Tips'),
          BottomNavigationBarItem(icon: Icon(Icons.calendar_today_outlined), label: 'Personal Growth'),
          BottomNavigationBarItem(icon: Icon(Icons.bar_chart_outlined), label: 'Progress'),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: 'Profile'),
        ],
      )
          : null,
    );
  }
}