import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp(window.defaultRouteName));

void newMain() => runApp(NewMainApp());

class NewMainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: Container(
            child: Text('Hello World'),
          ),
        ),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  final String routerName;

  const MyApp(this.routerName, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: getRouterWidget(routerName),
    );
  }

  Widget getRouterWidget(String router) {
    switch (routerName) {
      case "main":
        return const MyHomePage(title: 'Flutter Demo Home Page1');
      default:
        return NotFontRouterWidget(routerName);
    }
  }
}

class NotFontRouterWidget extends StatelessWidget {
  final String pageName;

  const NotFontRouterWidget(this.pageName, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      alignment: Alignment.center,
      child: Text("not font page $pageName}"),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  final _channel = const MethodChannel("flutterWithAndroid");

  String arguments = "";

  @override
  void initState() {
    super.initState();

    ///监听android端的调用
    _channel.setMethodCallHandler((call) async {
      switch (call.method) {
        case "flutterMethod":
          arguments = call.arguments;
          print("参数：${call.arguments}");
          break;
      }
      return "我是 Flutter 返回值";
    });
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
    // //调用 Android 的 AndroidMethod 方法
    // var result = _channel.invokeMapMethod("AndroidMethod", "调用 Android 参数");
    // result.then((value) => print('Android 返回值 :$value'));

    //打开原生页面
    // _channel.invokeMapMethod("jumpToNative");

    Navigator.push<void>(
        context,
        MaterialPageRoute<void>(
          builder: (BuildContext context) => NewMainApp(),
        ));
  }

  @override
  Widget build(BuildContext context) {
    print('----------- $arguments');
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
