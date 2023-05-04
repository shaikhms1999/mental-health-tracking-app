import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quize/chatpage.dart';
import 'package:quize/quiz_screen.dart';
import 'YouTubeSearch.dart';
import 'doctor.dart';
import 'exercise.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
          backgroundColor: Colors.black,
          activeColor: Colors.red,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.chat_outlined,
                ),
                label: 'Chat'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.video_library_outlined,
                ),
                label: 'Video'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.self_improvement_outlined,
                ),
                label: 'Exercises'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.medical_services_outlined,
                ),
                label: 'Doctors'),
          ]),
      tabBuilder: (context, index) {
        switch (index) {
          case 0:
            return CupertinoTabView(
              builder: (context) {
                return CupertinoPageScaffold(child: HomeScreen());
              },
            );

          case 1:
            return CupertinoTabView(
              builder: (context) {
                return CupertinoPageScaffold(
                    child: chatpage(
                  email: 'arbaaz',
                ));
              },
            );

          case 2:
            return CupertinoTabView(
              builder: (context) {
                return CupertinoPageScaffold(child: YouTubeSearch());
              },
            );
          case 3:
            return CupertinoTabView(
              builder: (context) {
                return CupertinoPageScaffold(child: Exercise());
              },
            );
          case 4:
            return CupertinoTabView(
              builder: (context) {
                return CupertinoPageScaffold(child: DoctorScreen());
              },
            );
        }
        return Container();
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Quiz"),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text("Take a Quick Survey about your Mental Health"),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: ((context) {
              return QuizScreen();
            })));
          },
        ),
      ),
      backgroundColor: Color.fromARGB(255, 121, 68, 219),
    );
  }
}

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text("ChatScreen"),
      ),
    );
  }
}

// class YouTubeSearch extends StatelessWidget {
//   const YouTubeSearch({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: Center(
//         child: Text("Video"),
//       ),
//     );
//   }
// }

class ExerciseScreen extends StatelessWidget {
  const ExerciseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text("ExerciseScreen"),
      ),
    );
  }
}

// class DoctorScreen extends StatelessWidget {
//   const DoctorScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: Center(
//         child: Text(
//             "1) Dr. Pradeep patkar\nPhone: 022 2745 1661\n2) Dr. Rishab Verma MD Psychiatrist\nPhone: 099204 56942"),
//       ),
//     );
//   }
// }
