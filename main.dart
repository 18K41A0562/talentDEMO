import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/config/palette.dart';
import 'package:flutter_app/screen1/auth/auth.dart';
import 'package:flutter_app/screen1/home.dart';
import 'package:flutter_app/screen1/splash.dart';
import 'package:lit_firebase_auth/lit_firebase_auth.dart';
import 'package:google_fonts/google_fonts.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LitAuthInit(
      authProviders: const AuthProviders(
        emailAndPassword: true,
        google: true,
        apple: true,
        twitter: true,
      ),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        theme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity,
          textTheme: GoogleFonts.muliTextTheme(),
          accentColor: Palette.darkBlue,
          appBarTheme: const AppBarTheme(
            brightness: Brightness.dark,
            color: Palette.darkBlue,
          ),
        ),
        // home: LitAuthState(
        //   authenticated: HomeScreen(),
        //   unauthenticated: AuthScreen(),
        // ),
        home: SplashScreen(),
        // home: Scaffold(
        //   appBar: AppBar(
        //     title: const Text('Lit Firebase Auth'),
        //   ),
        //   body: const LitAuth(),
        // ),
      ),
    );
  }
}

/*Down one 111111111*/

// import 'package:flutter/material.dart';
// import 'package:flutter_app/result.dart';
// import './quiz.dart';

// // void main() {
// //   runApp(MyApp());
// // }

// void main() => runApp(MyApp());

// class MyApp extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     // TODO: implement createState
//     //throw UnimplementedError();
//     return _MyAppState();
//   }
// }

// class _MyAppState extends State<MyApp> {
//   final _questions = const [
//     {
//       'questionText': 'what\'s your fav color?',
//       'answers': [
//         {'text': 'Black', 'score': 30},
//         {'text': 'Red', 'score': 20},
//         {'text': 'Green', 'score': 7},
//         {'text': 'White', 'score': 15}
//       ]
//     },
//     {
//       'questionText': 'what\'s your fav animal?',
//       'answers': [
//         {'text': 'Lion', 'score': 40},
//         {'text': 'Cat', 'score': 10},
//         {'text': 'Horse', 'score': 25},
//         {'text': 'Fox', 'score': 20}
//       ]
//     },
//     {
//       'questionText': 'who\'s your fav MCU charcter?',
//       'answers': [
//         {'text': 'Tony Stark', 'score': 50},
//         {'text': 'Natasha Romanoff', 'score': 20},
//         {'text': 'Thor', 'score': 30},
//         {'text': 'Steve Rogers', 'score': 40}
//       ]
//     },
//   ];
//   var _qindex = 0;
//   var _tScore = 0;

//   void _resetQuiz() {
//     setState(() {
//       //myapp build will be retrigered
//       _qindex = 0;
//       _tScore = 0;
//     });
//   }

//   void _answerQuestion(int score) {
//     _tScore += score;

//     setState(() {
//       _qindex += 1;
//     });
//     print(_qindex);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('talentER'),
//         ),
//         body: _qindex < _questions.length
//             ? Quiz(
//                 answerQuestion: _answerQuestion,
//                 qindex: _qindex,
//                 questions: _questions,
//               )
//             : Result(_tScore, _resetQuiz),
//       ),
//     );
//   }
// }
