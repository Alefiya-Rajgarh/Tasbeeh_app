import 'package:flutter/material.dart';
import 'package:tasbeeh_app/activity/home.dart';
import 'package:tasbeeh_app/activity/loading.dart';

void main(){
  runApp(MaterialApp(
    routes: {
  "/" : (context)=>Loading(),
  "/home" : (context)=>Home(),
  },
    debugShowCheckedModeBanner: false,

  ));
}

