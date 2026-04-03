import 'package:flutter/material.dart';

class TrainingModel {
  final String title;
  final String description;
  final IconData icon;
  final String route;
  final List<Color> gradient;

  const TrainingModel({
    required this.title,
    required this.description,
    required this.icon,
    required this.route,
    required this.gradient,
  });
}