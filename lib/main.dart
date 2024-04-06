import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:kbc_quiz/screens/home.dart';
import 'package:kbc_quiz/screens/login.dart';
import 'package:kbc_quiz/screens/looser_screen.dart';
import 'package:kbc_quiz/screens/profile_page.dart';
import 'package:kbc_quiz/screens/question_ui.dart';
import 'package:kbc_quiz/screens/quiz_intro.dart';
import 'package:kbc_quiz/screens/win.dart';
// import 'package:overlay_support/overlay_support.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
      apiKey: 'AIzaSyASjtcjgOitt8sUQe6GJ26ffI5hdpKBhLg',
      // authDomain: 'your_auth_domain',
      appId: '1:1087933062858:android:a7ba4b5abe6c27eb235e33',
      messagingSenderId: '1087933062858',
      projectId: 'quizapp-c9ddf',
      // Add other configuration options
    ),
  );
  runApp(MyApp());
}

// Future<void> main() async{
//   WidgetsFlutterBinding.ensureInitialized();
//   // await Firebase.initializeApp();
//   await Firebase.initializeApp(
//     options: FirebaseOptions(
//       apiKey: 'AIzaSyASjtcjgOitt8sUQe6GJ26ffI5hdpKBhLg',
//       // authDomain: 'your_auth_domain',
//       appId: '1:1087933062858:android:a7ba4b5abe6c27eb235e33',
//       messagingSenderId: '1087933062858',
//       projectId: 'notesflutter-fca62',
//       // Add other configuration options
//     ),
//   );
//   runApp(MyApp());
// }

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // return OverlaySupport.global(
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.purple,
        ),
        // home: Login(),
      home:ProfilePage(),
      // ),
    );
  }
}




/// source code
// https://github.com/codewithdhruv22/KBC_QUIZ/tree/main/VideoNo8/lib

/// for SHA key
// keytool -list -v -alias androiddebugkey -keystore C:\Users\Lenovo\.android\debug.keystore
// SHA1: 44:D8:63:78:54:10:88:6A:79:82:FD:74:E2:52:7A:6F:C1:50:11:B7
//          SHA256: 36:CA:24:D1:47:F5:EC:A8:26:80:80:AE:84:85:A8:E5:6F:C8:9F:0F:C9:F6:C9:C2:57:DA:E1:D7:03:D2:99:2E
// Signature algorithm name: SHA256withRSA