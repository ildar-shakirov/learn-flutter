import 'package:flutter/material.dart';
import 'dart:async';

void main() {
  runApp(MaterialApp(
      title: 'Flutter Tutorial',
      home: Scaffold(
          appBar: AppBar(title: Text('Flutter layout demo')),
          body: MyStatefulWidget())));
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  bool showtext = true;
  bool toggleState = true;
  Timer t2;

  void toggleBlinkState() {
    setState(() {
      toggleState = !toggleState;
    });
    var twenty = const Duration(milliseconds: 100);
    if (toggleState == false) {
      t2 = Timer.periodic(twenty, (Timer t) {
        toggleShowText();
      });
    } else {
      t2.cancel();
    }
  }

  void toggleShowText() {
    setState(() {
      showtext = !showtext;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            (showtext
                ? (Text('This execution will be done before you can blink.'))
                : (Container())),
            Padding(
                padding: EdgeInsets.only(top: 70.0),
                child: ElevatedButton(
                    onPressed: toggleBlinkState,
                    child: (toggleState
                        ? (Text('Blink'))
                        : (Text('Stop Blinking')))))
          ],
        ),
      ),
    );
  }
}
