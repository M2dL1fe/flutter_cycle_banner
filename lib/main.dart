import 'package:cycle_banner/cycle_banner.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Cycle Banner',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Cycle Banner Home Page'),
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
  List images = ["https://t7.baidu.com/it/u=2604797219,1573897854&fm=193&f=GIF", "https://t7.baidu.com/it/u=2942499027,2479446682&fm=193&f=GIF", "https://t7.baidu.com/it/u=3165657288,4248157545&fm=193&f=GIF", "https://t7.baidu.com/it/u=3240224891,3518615655&fm=193&f=GIF", "https://t7.baidu.com/it/u=2501476447,3743798074&fm=193&f=GIF"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: CycleBanner(
        images,
        (BuildContext context, int index) {
          return Image.network(images[index % images.length], width: double.maxFinite, fit: BoxFit.cover);
        },
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
