import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'globals.dart' as globals;

void main() {
  // This is to default the app to be in landscape mode and full screen
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight]).then((_){
    SystemChrome.setEnabledSystemUIOverlays([]).then((_){
      runApp(MyApp());
    });
  });
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Horror Space Game Sandbox',
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
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Container(
      /// Background image
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            globals.mainScreenBackground,
          ),
          fit: BoxFit.cover,
        ),
      ),
      /// Main center of the game for titles
      child: Scaffold(
        backgroundColor: Colors.transparent,
        // appBar: AppBar(
        //   title: Text(widget.title),
        // ),
        body: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(0.0, 25, 0.0, 0.0),
              child: Text(
                "Title of Game",
                style: TextStyle(
                  fontSize: 50,
                  color: Colors.white,
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: Text(
                  "Tap to begin",
                    style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
