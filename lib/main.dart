import 'package:flutter/material.dart';

import 'character.dart';
import 'report_box.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          padding: EdgeInsets.only(top: 30),
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  'assets/background.jpg',
                ),
                fit: BoxFit.fitWidth),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Icon(
                      Icons.menu,
                      color: Colors.grey,
                    ),
                    Text(
                      'Profile',
                      style: TextStyle(fontSize: 20),
                    ),
                    Icon(
                      Icons.settings,
                      color: Colors.grey,
                    )
                  ],
                ),
              ),
              Row(
                // mainAxisAlignment: ,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 40.0, top: 20, right: 30),
                    child: ClipOval(
                      child: SizedBox(
                        width: 120,
                        height: 120,
                        child: Image.asset(
                          'assets/profile_picture.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(top: 16),
                        child: Text(
                          'Timothy Lewis',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 7),
                        child: Text(
                          'Teacher',
                          style: TextStyle(color: Colors.grey, fontSize: 16),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Text(
                          'Change Profile',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Strong side:',
                      style: TextStyle(
                        color: Color(0xFF260064),
                        fontSize: 18,
                      ),
                    ),
                    Row(
                      children: [
                        character(
                            'Education', Colors.cyan[100], Color(0xFF017281)),
                        character(
                            'Accuracy', Colors.cyan[100], Color(0xFF017281)),
                        character(
                            'Efficiency', Colors.cyan[100], Color(0xFF017281)),
                      ],
                    ),
                    const Text(
                      'Weak side:',
                      style: TextStyle(
                        color: Color(0xFF260064),
                        fontSize: 18,
                      ),
                    ),
                    Row(
                      children: [
                        character(
                            'Management', Color(0xFFFFDCDC), Color(0xFFFD4A4A)),
                        character('Inflexibility', Color(0xFFFFDCDC),
                            Color(0xFFFD4A4A)),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 15),
                      child: Text(
                        'My Reports:',
                        style: TextStyle(
                          fontSize: 22,
                          color: Color(0xFF260064),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        reports(
                          'Astro- psychological report',
                          'Some short description of this type of report.',
                          const Icon(
                            Icons.person,
                            color: Color(0xFF260064),
                            size: 28,
                          ),
                          Color(0xFFCDC6F0),
                          Color(0xFF260064),
                        ),
                        reports(
                          'Monthly prediction report',
                          'Some short description of this type of report.',
                          const Icon(
                            Icons.calendar_today_outlined,
                            color: Color(0xFF006164),
                            size: 28,
                          ),
                          Color(0xFFBFE0E0),
                          Color(0xFF006164),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        reports(
                          'Daily Prediction',
                          'Some short description of this type of report.',
                          Icon(
                            Icons.check_box_outlined,
                            color: Color(0xFFFA4939),
                            size: 28,
                          ),
                          Color(0xFFF1D7D4),
                          Color(0xFFFA4939),
                        ),
                        reports(
                          'Love report',
                          'Some short description of this type of report.',
                          Icon(
                            Icons.favorite_border,
                            color: Color(0xFFCF5098),
                            size: 28,
                          ),
                          Color(0xFFF1D1E3),
                          Color(0xFFF1D1E3),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
