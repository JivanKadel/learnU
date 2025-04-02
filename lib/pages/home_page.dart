import 'package:flutter/material.dart';
import 'package:learn_u/components/course_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        children: [CourseCard(), CourseCard(), CourseCard(), CourseCard()],
      ),
    );
  }
}
