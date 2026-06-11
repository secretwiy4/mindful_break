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

  void _onBottomNavTapped(int index) {
    int targetPage = index;

    if (index == 0) {
      targetPage = 2;
    } else if (index == 1) {
      targetPage = 0;
    } else if (index == 2) {
      targetPage = 3;
    } else if (index == 3) {
      targetPage = 5;
    }

    _pageController.animateToPage(
      targetPage,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
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
      const ProgressOverviewScreen(),
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
        currentIndex: _currentIndex == 5 ? 3 : (_currentIndex - 2).clamp(0, 4),
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: const Color(0xff3D5A50),
        unselectedItemColor: Colors.grey,
        selectedFontSize: 10,
        unselectedFontSize: 10,
        onTap: _onBottomNavTapped,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.lightbulb), label: 'Study Tips'),
          BottomNavigationBarItem(icon: Icon(Icons.trending_up), label: 'Personal Growth'),
          BottomNavigationBarItem(icon: Icon(Icons.bar_chart), label: 'Progress'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      )
          : null,
    );
  }
}