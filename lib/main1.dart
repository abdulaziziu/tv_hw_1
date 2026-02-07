import 'package:flutter/material.dart';

void main(List<String> args) {
  Card(
    child: Container(
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text("Абдулазиз"),
          SizedBox(height: 8),
          Text("Flutter Developer"),
        ],
      ),
    ),
  );
}
