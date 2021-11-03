import 'package:flutter/material.dart';

class MindMap extends StatelessWidget {
  static const RouteName = '/mindmap';
  const MindMap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Mind Maps page'),
      ),
    );
  }
}
