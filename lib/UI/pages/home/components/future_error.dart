import 'package:flutter/material.dart';

List<Widget> getErrorWidget(AsyncSnapshot snapshot) {
  return [
    const Icon(
      Icons.error_outline,
      color: Colors.red,
      size: 60,
    ),
    Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Text('Error: ${snapshot.error}'),
    )
  ];
}