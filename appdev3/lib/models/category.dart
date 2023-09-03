import 'package:flutter/material.dart';
class Category1{
  Category1({
    required this.id,
    required this.title,
    this.color=Colors.orange
    });
  final String id;
  final String title;
  final Color color;
}