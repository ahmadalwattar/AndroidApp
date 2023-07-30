import 'package:flutter/material.dart';
import 'package:shopshi/core/functions/checkinternet.dart';

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  var res;
  initialdata() async {
    res = await checkInternet();
    print(res);
  }

  @override
  void initState() {
    initialdata();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Test'),
        ),
        body: const Text('321'));
  }
}
