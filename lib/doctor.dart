import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class DoctorScreen extends StatefulWidget {
  const DoctorScreen({super.key});

  @override
  State<DoctorScreen> createState() => _DoctorScreenState();
}

class _DoctorScreenState extends State<DoctorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Doctor Detail"),
      ),
      backgroundColor: Color.fromARGB(255, 112, 160, 243),
      body: Container(
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text(
                  '''1. Dr. Chetan Lokhande MBBS, M.D. (Psychiatry)\nPhone: 022 2522 3022\n\n 2. Dr. Dean Creado MBBS, DPM (Psychiatry), DNB - Psychiatry Psychiatrist, Neuropsychiatrist\nPhone: 022 3069 6969\n\n 3.Dr. Naazneen Ladak MBBS, DPM (Psychiatry)\nPhone:099208 33386\n\n 4.Dr. Kedar Tilwe DNB - Psychiatry, DPM (Psychiatry), MBBS\nPhone:02249254925\n\n 5.Dr.Aditi Chandrashekhar Acharya M.D. (Psychiatry)\nPhone:022 2578 3800\n\n 6.Dr. Sneha Naik Samant DPM (Psychiatry), MBBS Psychiatrist\nPhone: 088501 88789''',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                  ),
                ),
              ])),
    );
  }
}
