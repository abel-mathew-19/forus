import 'package:cc/app.dart';
import 'package:cc/features/notification/data/firebase_api.dart';
import 'package:cc/firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  //firebase set up
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await FirebaseApi().initNotification();
  runApp(MyApp());
}
