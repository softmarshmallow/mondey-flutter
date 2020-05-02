import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:monii/live_money_screen.dart';
import 'package:monii/utils/themes.dart';

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
      theme: buildTheme(context),
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
      body: Container(
        padding: EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "얼마나 버시나요?",
              style: Theme.of(context).textTheme.headline2,
            ),
            _buildInputSection(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.navigate_next), onPressed: _moveToLiveScreen),
    );
  }

  Widget _buildInputSection() {
    var style = Theme.of(context).textTheme.headline3;

    return Row(
      children: [
        Text(
          "₩",
          style: style,
        ),
        Container(
            width: 100,
            child: TextField(
              keyboardType: TextInputType.number,
              style: style,
              autofocus: true,
            ))
      ],
    );
  }

  _moveToLiveScreen() {
    Navigator.of(context).pushNamed(LiveMoneyScreen.routeName);
  }
}
