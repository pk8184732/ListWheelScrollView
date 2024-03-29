import 'dart:math';


import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ListWheelScrollView(
      itemExtent: 100,
      useMagnifier: true,
      magnification: 1.11,
      children: listltems(context),
    );
  }
}
List<Widget>listltems(BuildContext context){
  int i =0;
  final List<Widget> items = <Widget>[AppBar(title: Center(child: Text("List Wheel ScrollView"),),backgroundColor: Colors.blueGrey,),
    Container(color: Colors.black26,child: Image.network("data:image/jpeg;base64,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"),)];
  do{
    i+=1;
    items.add(Container(
      color: Color((Random().nextDouble()*0xFFFFFF).toInt() <<0).withOpacity(1.0),
    ));
  }
  while(i <= 300);
  return items;
}
