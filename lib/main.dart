import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'features/presentation/pages/signup_page.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp();
  }
  await Firebase.initializeApp(
      options: FirebaseOptions(
        apiKey: "AIzaSyACFXKt89jlHSn6zMQoFUS-r-2-FSKBbKU",
        appId: "1:516213315375:android:e1d7c3d905141a7c5b73da",
        messagingSenderId: "516213315375",
        projectId: "attendancemangement-4dced",
      ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Flutter Firebase",
        debugShowCheckedModeBanner: false,
        home:SignUpPage(),
    );
  }
}
