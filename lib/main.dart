import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:monii/live_money_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData.dark(),
      routes: {
        LiveMoneyScreen.routeName: (context) => LiveMoneyScreen(),
      },
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: Theme.of(context).colorScheme.secondary,
        ),
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("home"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "enter your salary",
              style: Theme.of(context).textTheme.headline2,
            ),
            TextField(
              keyboardType: TextInputType.number,
              autofocus: true,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.navigate_next), onPressed: _moveToLiveScreen),
    );
  }

  _moveToLiveScreen() {
    Navigator.of(context).pushNamed(LiveMoneyScreen.routeName);
  }
}
