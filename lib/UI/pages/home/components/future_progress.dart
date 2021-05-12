import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

List<Widget> getDataLoadingInProgress() {
  print("dataLoadingInProgress is called");
  return <Widget>[
    SizedBox(
      child: CircularProgressIndicator(),
      width: 32,
      height: 32,
    ),
    Padding(
      padding: EdgeInsets.only(top: 16),
      child: Text('Loading...'),
    )
  ];
}