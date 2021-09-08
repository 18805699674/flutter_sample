import 'package:flutter/material.dart';
import 'package:flutter_sample/ui/page_sample_a.dart';
import 'package:get/get.dart';

void main() {
  // 状态管理/依赖管理/路由管理
  /*
      只用Get来进行状态管理或依赖管理，就没有必要使用GetMaterialApp。
      GetMaterialApp对于路由、snackbar、国际化、bottomSheet、对话框以及与路由相关的高级apis和没有上下文（context）的情况下是必要的
   */
  runApp(
      GetMaterialApp(
        home: MyApp(),
      )
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
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
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      floatingActionButton: FloatingActionButton(
        child: Text("PageSampleA"),
        // 路由 https://github.com/jonataslaw/getx/blob/master/documentation/zh_CN/route_management.md#navigation-with-named-routes
        onPressed: () => Get.to(PageSampleA()),
      ),
    );
  }
}
