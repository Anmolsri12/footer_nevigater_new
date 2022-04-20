import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(

    ),
  ));
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<BottomNavigationBarItem> _items=[];
  String _value = "";
  int Index = 0;
  @override
  void initState() {
    // TODO: implement initState
     _items= [];
     
     _items.add(BottomNavigationBarItem(icon: Icon(Icons.people), label:"People"));
     _items.add(BottomNavigationBarItem(icon: Icon(Icons.weekend), label:"weekend"));
     _items.add(BottomNavigationBarItem(icon: Icon(Icons.mail), label:"mail"));
  }
  @override
  Widget build(BuildContext context) {
    // ignore: dead_code
    return Scaffold(
      appBar: AppBar(
        title: Text("Booter Navigater"),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              Text(_value)
              ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items:_items,
        fixedColor: Colors.blue,
        currentIndex: Index,
        onTap: (int _item){
          setState(() {
            Index=_item;
            _value = "Current value is: ${Index.toString()}";
          });
        }
      )
      );
  }
}