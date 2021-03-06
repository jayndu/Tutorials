import 'package:customlogger/services/logger.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
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
  _clickButton() {
    ApplicationLogger.getLogger("FAB").d("This is a debug message");
    ApplicationLogger.getLogger("FAB").v("This is a verbose message");
    ApplicationLogger.getLogger("FAB").w("This is a warning message");
    ApplicationLogger.getLogger("FAB").e("This is an error message");
    ApplicationLogger.getLogger("FAB").wtf("This is a fatal error message");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[Text("Flutter Logging Tutorial")],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.cake),
        onPressed: _clickButton,
      ),
    );
  }
}
