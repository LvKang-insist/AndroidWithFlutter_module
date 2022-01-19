import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp("main"));

void newMain() => runApp(NewMainApp());

class NewMainApp extends StatefulWidget {
  @override
  _NewMainAppState createState() => _NewMainAppState();
}

class _NewMainAppState extends State<NewMainApp> {
  var list = [
    "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fdik.img.kttpdq.com%2Fpic%2F71%2F49553%2F6b10daec9e6a8e1e_1024x1024.jpg&refer=http%3A%2F%2Fdik.img.kttpdq.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1645020124&t=efb9f59224d70d3d0f184f2629ce2c55",
    "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fdik.img.kttpdq.com%2Fpic%2F76%2F52808%2Fb7fc7f059717ce45_1440x900.jpg&refer=http%3A%2F%2Fdik.img.kttpdq.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1645020124&t=51ba240618dbdae5f97697cd9b0dda8a",
    "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fpic156.nipic.com%2Ffile%2F20180226%2F4665280_111106114735_2.jpg&refer=http%3A%2F%2Fpic156.nipic.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1645020124&t=101ae7b780b933b8608df968f87dee10",
    "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fdik.img.kttpdq.com%2Fpic%2F72%2F49864%2F97c2dff601ef5b92_1280x1024.jpg&refer=http%3A%2F%2Fdik.img.kttpdq.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1645020124&t=65e321ad85d30090bb8172360022f442",
    "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fdik.img.kttpdq.com%2Fpic%2F71%2F49574%2F298c27a63b27190c_2560x1440.jpg&refer=http%3A%2F%2Fdik.img.kttpdq.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1645020124&t=faad29b8fe079407a8791e15814a457a",
    "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fdik.img.kttpdq.com%2Fpic%2F70%2F48490%2F54020dd89976eacc_1440x900.jpg&refer=http%3A%2F%2Fdik.img.kttpdq.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1645020124&t=df0d522516356a7e8781a3d2a6a72886",
    "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fdik.img.kttpdq.com%2Fpic%2F70%2F48681%2F365b0062ef7c61bf_1680x1050.jpg&refer=http%3A%2F%2Fdik.img.kttpdq.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1645020124&t=41a0b73e030c7dd14c5f08e25a7a152b",
    "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fdik.img.kttpdq.com%2Fpic%2F173%2F121048%2F69d87c13a75b07fd_480x640.jpg&refer=http%3A%2F%2Fdik.img.kttpdq.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1645020124&t=7b500c8602865f5526013796b236ce37",
    "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fdik.img.kttpdq.com%2Fpic%2F70%2F48789%2F5674af387cdfbc67_1366x768.jpg&refer=http%3A%2F%2Fdik.img.kttpdq.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1645020124&t=a10fc9c45c54f2d3b487be147b76337b",
    "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fdik.img.kttpdq.com%2Fpic%2F44%2F30274%2Fe6593669ce8bed25_1024x768.jpg&refer=http%3A%2F%2Fdik.img.kttpdq.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1645020124&t=42522f316921bfca031ec56a93e9dfd5",
    "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fdik.img.kttpdq.com%2Fpic%2F73%2F50415%2Ff3ff7e04f46ee910_1680x1050.jpg&refer=http%3A%2F%2Fdik.img.kttpdq.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1645020124&t=135598080e55ce8488a87698488ea596",
    "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fdik.img.kttpdq.com%2Fpic%2F73%2F51014%2F45d8a2d57b46bdce_1024x768.jpg&refer=http%3A%2F%2Fdik.img.kttpdq.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1645020124&t=1f5db6aa4e3ccc373ccb310964d5b32e",
    "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fdik.img.kttpdq.com%2Fpic%2F24%2F16102%2Fade59ed7423e6ef9_1366x768.jpg&refer=http%3A%2F%2Fdik.img.kttpdq.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1645020124&t=8ff79222fb1f70ccba7b8955b7681657",
    "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fdik.img.kttpdq.com%2Fpic%2F122%2F85327%2Fed3780ca576b337d_1366x768.jpg&refer=http%3A%2F%2Fdik.img.kttpdq.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1645020124&t=c04e335baa730a83f5d0650c753e6287",
    "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fdik.img.kttpdq.com%2Fpic%2F75%2F52410%2F01a8464eba14f33c_1024x768.jpg&refer=http%3A%2F%2Fdik.img.kttpdq.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1645020124&t=db0328e94278ef097da7925c45ac0767",
    "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fdik.img.kttpdq.com%2Fpic%2F72%2F49821%2Fcf747eec35da3db3_1440x900.jpg&refer=http%3A%2F%2Fdik.img.kttpdq.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1645020359&t=775da6b1e5bd4b33cf577e1819b10d30",
    "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fdik.img.kttpdq.com%2Fpic%2F70%2F48580%2F3f73ec669416816a_1680x1050.jpg&refer=http%3A%2F%2Fdik.img.kttpdq.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1645020359&t=403ed233e2949d8e9c8fd514fe29b210",
    "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fdik.img.kttpdq.com%2Fpic%2F70%2F48623%2F1bb824ff90bfc9aa_1680x1050.jpg&refer=http%3A%2F%2Fdik.img.kttpdq.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1645020359&t=a9d942939569f752a83a387af90f18bf",
    "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fdik.img.kttpdq.com%2Fpic%2F70%2F48588%2F9296e5bded9870f3_1680x1050.jpg&refer=http%3A%2F%2Fdik.img.kttpdq.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1645020359&t=31ff8040830340ab6b06c661654de9e5",
    "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fdik.img.kttpdq.com%2Fpic%2F122%2F84831%2F800859b5381bd557_1366x768.jpg&refer=http%3A%2F%2Fdik.img.kttpdq.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1645020359&t=917789633af42cd4a6a9d3e09f2a0a43",
    "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fdik.img.kttpdq.com%2Fpic%2F71%2F49572%2F51d577f9b9b67488_768x1024.jpg&refer=http%3A%2F%2Fdik.img.kttpdq.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1645020359&t=27ce884efc3f143080ea969e9fb116f7",
    "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fdik.img.kttpdq.com%2Fpic%2F190%2F132406%2F6ff395d4e604b06a_2560x1440.jpg&refer=http%3A%2F%2Fdik.img.kttpdq.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1645020359&t=2eb276214a9cce888d2ebae89bc8595d",
    "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fdik.img.kttpdq.com%2Fpic%2F70%2F48704%2Fa719a1820d057db2_1366x768.jpg&refer=http%3A%2F%2Fdik.img.kttpdq.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1645020359&t=fe105f42c6be4ef3333e2bd05a17539e",
    "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fdik.img.kttpdq.com%2Fpic%2F42%2F28749%2F517fe53894bab4f1_1280x1024.jpg&refer=http%3A%2F%2Fdik.img.kttpdq.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1645020359&t=0cfcad4c4c9613d53b715dc96e85b0c5",
    "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fdik.img.kttpdq.com%2Fpic%2F71%2F49688%2Fead31d996cb44042_1680x1050.jpg&refer=http%3A%2F%2Fdik.img.kttpdq.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1645020359&t=a2cd7d0bca35423097c3db0e3d607b8c",
    "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fdik.img.kttpdq.com%2Fpic%2F101%2F70623%2F7e959ddf8dca2efe_1440x900.jpg&refer=http%3A%2F%2Fdik.img.kttpdq.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1645020359&t=148331f78876dc87442f7ac83ef604c7",
    "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fdik.img.kttpdq.com%2Fpic%2F122%2F84754%2F043ce8047b83af56_1024x768.jpg&refer=http%3A%2F%2Fdik.img.kttpdq.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1645020359&t=2e3d9fe096ea2eed692fb2755811b79a",
    "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fdik.img.kttpdq.com%2Fpic%2F70%2F48549%2F0943a8c6eadaa18a_1440x900.jpg&refer=http%3A%2F%2Fdik.img.kttpdq.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1645020359&t=82aede51a7f2ad06744e48abba4f0a39",
    "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fdik.img.kttpdq.com%2Fpic%2F74%2F51158%2F74f932216099730a_1024x768.jpg&refer=http%3A%2F%2Fdik.img.kttpdq.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1645020359&t=edd1cd9595addab0a8e0b4ab332919c9",
    "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fdik.img.kttpdq.com%2Fpic%2F74%2F51605%2F1841c9ad8a0abc24_1024x768.jpg&refer=http%3A%2F%2Fdik.img.kttpdq.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1645020359&t=0f1690c62d5d61b31ccfd6e092fcfa12",
    "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fdik.img.kttpdq.com%2Fpic%2F70%2F48880%2F62345c5dabe7044d_1440x900.jpg&refer=http%3A%2F%2Fdik.img.kttpdq.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1645020359&t=567f9a2fce597b87c4cce05d65c4fc26",
  ];

  int pos = 0;

  List<Widget> images = [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('测试Flutter图片占用内存情况'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              addImage();
            });
          },
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
        body: Container(
          child: SizedBox(
            width: 400,
            height: 600,
            child: Stack(
              children: images,
            ),
          ),
        ),
      ),
    );
  }

  addImage() {
    if (pos < list.length) {
      images.add(Positioned(
        child: Image.network(
          list[pos],
          fit: BoxFit.cover,
          width: 400 - (pos + 30),
          height: 600 - (pos + 60),
        ),
        left: 0,
        top: 0,

      ));
      pos++;
    }
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
