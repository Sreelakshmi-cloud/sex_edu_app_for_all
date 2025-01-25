import 'package:flutter/material.dart';
import 'package:flutter_sex_education/pages/home_page.dart';
import 'package:iconly/iconly.dart';

import 'Faq_page/faq_screen.dart';
import 'advice_screen/faculty_list.dart';
import 'chat_bot/chat_bot.dart';
import 'pages/course_detail_page.dart';
import 'quiz/views/quiz_home_screen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MainTabBarPage(),
      routes: {
        CourseDetailPage.routeName: (ctx) => const CourseDetailPage(),
      },
    )
  );
}

class MainTabBarPage extends StatefulWidget {
  const MainTabBarPage({super.key});

  @override
  State<MainTabBarPage> createState() => _MainTabBarPageState();
}

class _MainTabBarPageState extends State<MainTabBarPage> {
  int selectedIndex = 2;

  static List<Widget> tabBarPages = [
    const HomePage(),
    const QuizHomePage(),
    const ChatScreen(),
     FAQScreen(),
     FacultyListPage(),
  ];

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabBarPages[selectedIndex],
      bottomNavigationBar: bottomNavigationBar(context),
    );
  }

  BottomNavigationBar bottomNavigationBar(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.black,
      unselectedItemColor: Colors.grey,
      selectedItemColor: Colors.white,
      currentIndex: selectedIndex,
      onTap: onItemTapped,
      items: [
          BottomNavigationBarItem(icon: Icon(IconlyBold.play), label: "Videos"),
          BottomNavigationBarItem(icon: Icon(Icons.question_answer), label: "Quiz"),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Chat Bot"),
          BottomNavigationBarItem(icon: Icon(IconlyBold.bookmark), label: "FAQ"),
          BottomNavigationBarItem(icon: Icon(IconlyBold.profile), label: "Expert"),
      ],
    );
  }

}



