import 'package:flutter/material.dart';
import 'package:learn_u/models/course.dart';

class Courses extends ChangeNotifier {
  List<Course> allCourses = [
    Course(
      id: 1,
      title: 'Flutter Basics',
      instructor: 'John Cena',
      duration: 105,
      rating: "4.7",
      cost: 59.99,
    ),
    Course(
      id: 2,
      title: 'Dart Programming',
      instructor: 'The Undertaker',
      duration: 150,
      rating: "4.5",
      cost: 40.49,
    ),
    Course(
      id: 3,
      title: 'State Management',
      instructor: 'Randy Orton',
      duration: 350,
      rating: "4",
      cost: 50.00,
    ),
    Course(
      id: 4,
      title: 'UI Design',
      instructor: 'Dolph Ziggler',
      duration: 540,
      rating: "5",
      cost: 109.99,
    ),
    Course(
      id: 5,
      title: 'Networking',
      instructor: 'Tom Cruise',
      duration: 140,
      rating: "4.5",
      cost: 110,
    ),
    Course(
      id: 6,
      title: 'Animations',
      instructor: 'Jackey Chan',
      duration: 900,
      rating: "4.9",
      cost: 75,
    ),
  ];

  List<Course> savedCourses = [];

  List<Course> _getAllCourse() {
    return allCourses;
  }

  List<Course> _getAllSavedCourse() {
    return savedCourses;
  }

  void _saveCourse(Course course) {
    if (!savedCourses.contains(course)) {
      savedCourses.add(course);
    }
  }

  void _removeCourse(Course course) {
    if (savedCourses.contains(course)) {
      savedCourses.remove(course);
    }
  }
}
