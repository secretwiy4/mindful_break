import 'package:flutter/material.dart';

void main() {
  runApp(const MindfulBreakApp());
}

class MindfulBreakApp extends StatelessWidget {
  const MindfulBreakApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mindful Break',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFFAFDFB),
        fontFamily: 'Sans-Serif',
      ),
      home: const MainNavigationController(),
    );
  }
}
const Color kTealPrimary = Color(0xFF66C2A5);
const Color kTealDark = Color(0xFF0F4C43);
const Color kGrayBorder = Color(0xFFE0E0E0);
const Color kTextSub = Color(0xFF7A7A7A);
const Color kBlueMood = Color(0xFF4285F4);

class MainNavigationController extends StatefulWidget {
  const MainNavigationController({super.key});

  @override
  State<MainNavigationController> createState() => _MainNavigationControllerState();
}

class _MainNavigationControllerState extends State<MainNavigationController> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff3f3f3),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),

              IconButton(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.zero,
                icon: const Icon(
                  Icons.arrow_back_ios_new,
                  color: Colors.black,
                  size: 24,
                ),
                onPressed: () {
                },
              ),

              const SizedBox(height: 40),

              const Text(
                'Login your\naccount',
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.w800,
                  color: Colors.black,
                  height: 1.1,
                  letterSpacing: -0.5,
                ),
              ),

              const SizedBox(height: 40),

              const Text(
                'Email',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 8),
              TextField(
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  filled: true,
                  fillColor: Colors.transparent,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(color: Colors.black54, width: 1),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(color: Colors.black, width: 1.5),
                  ),
                ),
              ),

              const SizedBox(height: 24),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Password',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ForgotPasswordScreen(),
                        ),
                      );
                    },
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                      minimumSize: Size.zero,
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                    child: const Text(
                      'Forgot Password?',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff4a7c73),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  filled: true,
                  fillColor: Colors.transparent,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(color: Colors.black54, width: 1),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(color: Colors.black, width: 1.5),
                  ),
                ),
              ),

              const SizedBox(height: 40),

              SizedBox(
                width: double.infinity,
                height: 56,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PersonalizeScreen(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff417066),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    elevation: 2,
                  ),
                  child: const Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
class CreateAccountScreen extends StatelessWidget {
  const CreateAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff3f3f3),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),

                IconButton(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.zero,
                  icon: const Icon(Icons.arrow_back_ios_new, color: Colors.black, size: 24),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                const SizedBox(height: 40),
                const Text(
                  'Create your\naccount',
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.w800,
                    color: Colors.black,
                    height: 1.1,
                    letterSpacing: -0.5,
                  ),
                ),
                const SizedBox(height: 40),
                const Text(
                  'Email',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black),
                ),
                const SizedBox(height: 8),
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(color: Colors.black54),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(color: Colors.black, width: 1.5),
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                const Text(
                  'Password',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black),
                ),
                const SizedBox(height: 8),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(color: Colors.black54),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(color: Colors.black, width: 1.5),
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                SizedBox(
                  width: double.infinity,
                  height: 56,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff417066),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                      elevation: 2,
                    ),
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff3f3f3),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),

                IconButton(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.zero,
                  icon: const Icon(Icons.arrow_back_ios_new, color: Colors.black, size: 24),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),

                const SizedBox(height: 40),

                const Text(
                  'Reset your\npassword',
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.w800,
                    color: Colors.black,
                    height: 1.1,
                    letterSpacing: -0.5,
                  ),
                ),

                const SizedBox(height: 12),

                const Text(
                  'Enter your email and we\'ll send\nyou a link to reset your password',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                    height: 1.3,
                  ),
                ),

                const SizedBox(height: 40),

                const Text(
                  'Email',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 8),
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(color: Colors.black54),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(color: Colors.black, width: 1.5),
                    ),
                  ),
                ),

                const SizedBox(height: 40),

                SizedBox(
                  width: double.infinity,
                  height: 56,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LinkSentScreen(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff417066),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      elevation: 2,
                    ),
                    child: const Text(
                      'Send Reset Link',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
class LinkSentScreen extends StatelessWidget {
  const LinkSentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff3f3f3),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(
                Icons.mark_email_read_outlined,
                size: 80,
                color: Colors.black87,
              ),

              const SizedBox(height: 24),

              const Text(
                'Link Sent!',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w800,
                  color: Color(0xff62c227),
                  letterSpacing: -0.5,
                ),
              ),

              const SizedBox(height: 24),

              const Text(
                'We\'ve sent a password\nreset link to your email\naddress.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Colors.black87,
                  height: 1.2,
                ),
              ),

              const SizedBox(height: 32),

              const Text(
                'Check your inbox to\ncontinue.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Colors.black87,
                  height: 1.2,
                ),
              ),

              const SizedBox(height: 48),

              SizedBox(
                width: double.infinity,
                height: 56,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.popUntil(context, (route) => route.isFirst);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff417066),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    elevation: 2,
                  ),
                  child: const Text(
                    'Back to login page',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
class PersonalizeScreen extends StatefulWidget {
  const PersonalizeScreen({super.key});

  @override
  State<PersonalizeScreen> createState() => _PersonalizeScreenState();
}

class _PersonalizeScreenState extends State<PersonalizeScreen> {
  final TextEditingController _nameController = TextEditingController();

  final List<String> _goals = [
    'Build Confidence',
    'Sleep Better',
    'Improve Focus',
    'Reduce Stress',
  ];

  final List<String> _selectedGoals = [];

  void _toggleGoal(String goal) {
    setState(() {
      if (_selectedGoals.contains(goal)) {
        _selectedGoals.remove(goal);
      } else {
        _selectedGoals.add(goal);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    bool isNextEnabled = _selectedGoals.isNotEmpty;

    return Scaffold(
      backgroundColor: const Color(0xfff3f3f3),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),

                IconButton(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.zero,
                  icon: const Icon(Icons.arrow_back_ios_new, color: Colors.black, size: 24),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),

                const SizedBox(height: 30),

                const Text(
                  'Let\'s personalize\nyour experience',
                  style: TextStyle(
                    fontSize: 34,
                    fontWeight: FontWeight.w800,
                    color: Colors.black,
                    height: 1.1,
                    letterSpacing: -0.5,
                  ),
                ),

                const SizedBox(height: 24),

                const Text(
                  'What should we call you?',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),

                const SizedBox(height: 16),

                const Text(
                  'Your Name',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: Colors.black54,
                  ),
                ),

                const SizedBox(height: 8),

                TextField(
                  controller: _nameController,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(color: Colors.black38),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(color: Colors.black, width: 1.5),
                    ),
                  ),
                ),

                const SizedBox(height: 32),

                const Text(
                  'What\'s your main goal?',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),

                const SizedBox(height: 16),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: _goals.map((goal) {
                    bool isSelected = _selectedGoals.contains(goal);
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 12.0),
                      child: InkWell(
                        onTap: () => _toggleGoal(goal),
                        borderRadius: BorderRadius.circular(20),
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 200),
                          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                          decoration: BoxDecoration(
                            color: isSelected ? const Color(0xff417066) : Colors.transparent,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color: isSelected ? Colors.transparent : Colors.black45,
                              width: 1,
                            ),
                          ),
                          child: Text(
                            goal,
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                              color: isSelected ? Colors.white : Colors.black87,
                            ),
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                ),

                const SizedBox(height: 40),

                SizedBox(
                  width: double.infinity,
                  height: 56,
                  child: ElevatedButton(
                    onPressed: isNextEnabled
                        ? () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ExamInfoScreen(),
                        ),
                      );
                      print("Selected Goals: $_selectedGoals");
                    }
                        : null,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: isNextEnabled ? const Color(0xff417066) : const Color(0xffa5bdb8),
                      disabledBackgroundColor: const Color(0xffb2c7c2),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      elevation: isNextEnabled ? 2 : 0,
                    ),
                    child: Text(
                      'Next',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: isNextEnabled ? Colors.white : Colors.white70,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 24),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
class ExamInfoScreen extends StatefulWidget {
  const ExamInfoScreen({super.key});

  @override
  State<ExamInfoScreen> createState() => _ExamInfoScreenState();
}

class _ExamInfoScreenState extends State<ExamInfoScreen> {
  int _selectedIndex = -1;

  final List<String> _labels = ['Good', 'Okay', 'Stressed', 'Overload'];

  @override
  Widget build(BuildContext context) {
    bool isNextEnabled = _selectedIndex != -1;

    return Scaffold(
      backgroundColor: const Color(0xfff3f3f3),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),

              IconButton(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.zero,
                icon: const Icon(Icons.arrow_back_ios_new, color: Colors.black, size: 24),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),

              const SizedBox(height: 30),

              const Text(
                'Tell us about your\nexam week',
                style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.w800,
                  color: Colors.black,
                  height: 1.1,
                  letterSpacing: -0.5,
                ),
              ),

              const SizedBox(height: 12),

              const Text(
                'This helps us tailor the\ncontent just for you.',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                  height: 1.3,
                ),
              ),

              const SizedBox(height: 40),

              const Text(
                'How are you feeling right now?',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),

              const SizedBox(height: 30),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(4, (index) {
                  bool isSelected = _selectedIndex == index;
                  Color activeColor = isSelected ? const Color(0xff4a90e2) : const Color(0xff222222);

                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        _selectedIndex = index;
                      });
                    },
                    child: Column(
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          color: Colors.transparent,
                          child: CustomPaint(
                            painter: EmojiPainter(index: index, color: activeColor),
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          _labels[index],
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            color: activeColor,
                          ),
                        ),
                      ],
                    ),
                  );
                }),
              ),
              const Spacer(),
              SizedBox(
                width: double.infinity,
                height: 56,
                child: ElevatedButton(
                  onPressed: isNextEnabled
                      ? () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DashboardScreen(),
                      ),
                    );
                  }
                      : null,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: isNextEnabled ? const Color(0xff417066) : const Color(0xffb2c7c2),
                    disabledBackgroundColor: const Color(0xffb2c7c2),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    elevation: isNextEnabled ? 2 : 0,
                  ),
                  child: Text(
                    'Next',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: isNextEnabled ? Colors.white : Colors.white70,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}
class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _currentNavIndex = 0;

  final List<Map<String, dynamic>> _todoItems = [
    {
      'title': '15-Minute Mindful Walk',
      'subtitle': 'Focus on your breath and steps.',
      'isCompleted': false,
    },
    {
      'title': 'Write Gratitude Journal',
      'subtitle': 'Record 3 good things from today.',
      'isCompleted': false,
    },
    {
      'title': '5-Minutes Meditation',
      'subtitle': 'Clear your mind and relax.',
      'isCompleted': false,
    },
    {
      'title': 'Drink a Glass of Water',
      'subtitle': 'Stay hydrated and refreshed.',
      'isCompleted': false,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff3f3f3),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Good Morning, Girls',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w800,
                  color: Colors.black,
                  letterSpacing: -0.5,
                ),
              ),
              const SizedBox(height: 2),
              const Text(
                'You\'ve got this!',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: Colors.black54,
                ),
              ),
              const SizedBox(height: 20),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(18),
                decoration: BoxDecoration(
                  color: const Color(0xff99d5ca),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Stack(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Daily Focus',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w800,
                            color: Color(0xff1f3d37),
                          ),
                        ),
                        const SizedBox(height: 4),
                        const Text(
                          'Stay Present, one breath\nat a time',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff1f3d37),
                            height: 1.2,
                          ),
                        ),
                        const SizedBox(height: 16),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xff1f3d37),
                            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            elevation: 0,
                          ),
                          child: const Text(
                            'Start Breathing',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Positioned(
                      right: 0,
                      bottom: 0,
                      child: SizedBox(
                        width: 70,
                        height: 70,
                        child: CustomPaint(
                          painter: TulipPotPainter(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 28),
              const Text(
                'Today\'s Plan',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w800,
                  color: Colors.black,
                ),
              ),

              const SizedBox(height: 12),
              Column(
                children: _todoItems.asMap().entries.map((entry) {
                  int index = entry.key;
                  var item = entry.value;
                  bool isDone = item['isCompleted'];

                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        _todoItems[index]['isCompleted'] = !isDone;
                      });
                    },
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(14),
                        border: Border.all(color: const Color(0xffcccccc), width: 1.2),
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 28,
                            height: 28,
                            child: CustomPaint(
                              painter: TaskIconPainter(iconIndex: index),
                            ),
                          ),
                          const SizedBox(width: 14),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  item['title'],
                                  style: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w800,
                                    color: Colors.black,
                                    letterSpacing: -0.2,
                                  ),
                                ),
                                const SizedBox(height: 2),
                                Text(
                                  item['subtitle'],
                                  style: const TextStyle(
                                    fontSize: 11,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black54,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          AnimatedContainer(
                            duration: const Duration(milliseconds: 150),
                            width: 22,
                            height: 22,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: isDone ? const Color(0xff1f3d37) : Colors.transparent,
                              border: Border.all(
                                color: isDone ? Colors.transparent : const Color(0xff888888),
                                width: 1.5,
                              ),
                            ),
                            child: isDone
                                ? const Icon(Icons.check, color: Colors.white, size: 14)
                                : null,
                          ),
                        ],
                      ),
                    ),
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          border: Border(top: BorderSide(color: Color(0xffdddddd), width: 1)),
        ),
        child: BottomNavigationBar(
          currentIndex: _currentNavIndex,
          onTap: (index) => setState(() => _currentNavIndex = index),
          type: BottomNavigationBarType.fixed,
          backgroundColor: const Color(0xfff3f3f3),
          selectedItemColor: const Color(0xff1f3d37),
          unselectedItemColor: Colors.black38,
          selectedLabelStyle: const TextStyle(fontSize: 10, fontWeight: FontWeight.w700),
          unselectedLabelStyle: const TextStyle(fontSize: 10, fontWeight: FontWeight.w600),
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home_outlined), activeIcon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Study Tips'),
            BottomNavigationBarItem(icon: Icon(Icons.spa_outlined), activeIcon: Icon(Icons.spa), label: 'Personal Growth'),
            BottomNavigationBarItem(icon: Icon(Icons.bar_chart_rounded), label: 'Progress'),
            BottomNavigationBarItem(icon: Icon(Icons.person_outline_rounded), activeIcon: Icon(Icons.person), label: 'Profile'),
          ],
        ),
      ),
    );
  }
}
class TaskIconPainter extends CustomPainter {
  final int iconIndex;
  TaskIconPainter({required this.iconIndex});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = const Color(0xff222222)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.0
      ..strokeCap = StrokeCap.round;

    if (iconIndex == 0) {
      canvas.drawCircle(Offset(size.width * 0.55, size.height * 0.2), 2.5, paint..style = PaintingStyle.fill);
      paint.style = PaintingStyle.stroke;
      canvas.drawLine(Offset(size.width * 0.52, size.height * 0.32), Offset(size.width * 0.45, size.height * 0.6), paint);
      canvas.drawLine(Offset(size.width * 0.52, size.height * 0.35), Offset(size.width * 0.32, size.height * 0.45), paint);
      canvas.drawLine(Offset(size.width * 0.52, size.height * 0.35), Offset(size.width * 0.68, size.height * 0.5), paint);
      canvas.drawLine(Offset(size.width * 0.45, size.height * 0.6), Offset(size.width * 0.62, size.height * 0.85), paint);
      canvas.drawLine(Offset(size.width * 0.45, size.height * 0.6), Offset(size.width * 0.3, size.height * 0.8), paint);
    }
    else if (iconIndex == 1) {
      canvas.drawRect(Rect.fromLTWH(2, 4, 18, 20), paint);
      canvas.drawLine(Offset(size.width * 0.6, size.height * 0.15), Offset(size.width * 0.95, size.height * 0.5), paint..strokeWidth = 2.5);
      paint.strokeWidth = 1.5;
      canvas.drawLine(const Offset(6, 10), const Offset(14, 10), paint);
      canvas.drawLine(const Offset(6, 14), const Offset(14, 14), paint);
      canvas.drawLine(const Offset(6, 18), const Offset(11, 18), paint);
    }
    else if (iconIndex == 2) {
      canvas.drawCircle(Offset(size.width * 0.5, size.height * 0.25), 3, paint..style = PaintingStyle.fill);
      paint.style = PaintingStyle.stroke;
      final bodyPath = Path()
        ..moveTo(size.width * 0.25, size.height * 0.75)
        ..quadraticBezierTo(size.width * 0.5, size.height * 0.4, size.width * 0.75, size.height * 0.75)
        ..moveTo(size.width * 0.15, size.height * 0.8)
        ..lineTo(size.width * 0.85, size.height * 0.8);
      canvas.drawPath(bodyPath, paint);
    }
    else if (iconIndex == 3) {
      final glassPath = Path()
        ..moveTo(size.width * 0.25, size.height * 0.15)
        ..lineTo(size.width * 0.75, size.height * 0.15)
        ..lineTo(size.width * 0.65, size.height * 0.85)
        ..lineTo(size.width * 0.35, size.height * 0.85)
        ..close();
      canvas.drawPath(glassPath, paint);
      canvas.drawLine(Offset(size.width * 0.29, size.height * 0.45), Offset(size.width * 0.71, size.height * 0.45), paint..strokeWidth = 1.5);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
class TulipPotPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = const Color(0xff1f3d37)
      ..style = PaintingStyle.fill;

    final potPath = Path()
      ..moveTo(size.width * 0.25, size.height * 0.95)
      ..lineTo(size.width * 0.75, size.height * 0.95)
      ..lineTo(size.width * 0.85, size.height * 0.55)
      ..lineTo(size.width * 0.15, size.height * 0.55)
      ..close();
    canvas.drawPath(potPath, paint);

    paint.style = PaintingStyle.stroke;
    paint.strokeWidth = 3.5;
    paint.strokeCap = StrokeCap.round;

    canvas.drawLine(Offset(size.width * 0.5, size.height * 0.55), Offset(size.width * 0.5, size.height * 0.25), paint);
    final leftStem = Path()
      ..moveTo(size.width * 0.4, size.height * 0.55)
      ..quadraticBezierTo(size.width * 0.25, size.height * 0.45, size.width * 0.25, size.height * 0.3);
    canvas.drawPath(leftStem, paint);
    final rightStem = Path()
      ..moveTo(size.width * 0.6, size.height * 0.55)
      ..quadraticBezierTo(size.width * 0.75, size.height * 0.45, size.width * 0.75, size.height * 0.3);
    canvas.drawPath(rightStem, paint);

    paint.style = PaintingStyle.fill;

    canvas.drawOval(Rect.fromCenter(center: Offset(size.width * 0.25, size.height * 0.23), width: 14, height: 18), paint);
    canvas.drawOval(Rect.fromCenter(center: Offset(size.width * 0.5, size.height * 0.16), width: 15, height: 20), paint);
    canvas.drawOval(Rect.fromCenter(center: Offset(size.width * 0.75, size.height * 0.23), width: 14, height: 18), paint);

    final leftLeaf = Path()
      ..moveTo(size.width * 0.35, size.height * 0.52)
      ..quadraticBezierTo(size.width * 0.1, size.height * 0.42, size.width * 0.12, size.height * 0.32)
      ..quadraticBezierTo(size.width * 0.25, size.height * 0.42, size.width * 0.38, size.height * 0.48)
      ..close();
    canvas.drawPath(leftLeaf, paint);

    final rightLeaf = Path()
      ..moveTo(size.width * 0.65, size.height * 0.52)
      ..quadraticBezierTo(size.width * 0.9, size.height * 0.42, size.width * 0.88, size.height * 0.32)
      ..quadraticBezierTo(size.width * 0.75, size.height * 0.42, size.width * 0.62, size.height * 0.48)
      ..close();
    canvas.drawPath(rightLeaf, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

class EmojiPainter extends CustomPainter {
  final int index;
  final Color color;

  EmojiPainter({required this.index, required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3.8
      ..strokeCap = StrokeCap.round;

    final center = Offset(size.width / 2, size.height / 2);
    final radius = size.width / 2 - 2;

    canvas.drawCircle(center, radius, paint);

    if (index == 0) {
      canvas.drawArc(Rect.fromLTWH(14, 18, 12, 10), 3.14, 3.14, false, paint);
      canvas.drawArc(Rect.fromLTWH(34, 18, 12, 10), 3.14, 3.14, false, paint);
      canvas.drawArc(Rect.fromLTWH(18, 28, 24, 16), 0, 3.14, false, paint);
    }
    else if (index == 1) {
      paint.style = PaintingStyle.fill;
      canvas.drawCircle(const Offset(20, 24), 3.5, paint);
      canvas.drawCircle(const Offset(40, 24), 3.5, paint);
      paint.style = PaintingStyle.stroke;
      canvas.drawLine(const Offset(20, 40), const Offset(40, 40), paint);
    }
    else if (index == 2) {
      canvas.drawLine(const Offset(16, 20), const Offset(24, 25), paint);
      canvas.drawLine(const Offset(24, 25), const Offset(16, 30), paint);
      canvas.drawLine(const Offset(44, 20), const Offset(36, 25), paint);
      canvas.drawLine(const Offset(36, 25), const Offset(44, 30), paint);

      final mouthPath = Path()
        ..moveTo(18, 41)
        ..lineTo(23, 37)
        ..lineTo(28, 41)
        ..lineTo(33, 37)
        ..lineTo(38, 41)
        ..lineTo(42, 37);
      canvas.drawPath(mouthPath, paint);
    }
    else if (index == 3) {
      final leftEyePath = Path()
        ..moveTo(16, 19)
        ..lineTo(23, 23)
        ..lineTo(16, 27);
      canvas.drawPath(leftEyePath, paint);

      final rightEyePath = Path()
        ..moveTo(44, 19)
        ..lineTo(37, 23)
        ..lineTo(44, 27);
      canvas.drawPath(rightEyePath, paint);

      canvas.drawArc(Rect.fromLTWH(18, 36, 24, 14), 3.14, 3.14, false, paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}