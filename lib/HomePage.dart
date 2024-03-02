import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();

}

class _HomePageState extends State<HomePage> {

  String? valueChoose;

  List<String> listItem =
  [
    "Item-1",
    "Item-2",
    "Item-3",
    "Item-4"
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text("Drop Down Button"),
          centerTitle: true,
        ),


      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Container(
            padding: EdgeInsets.only(left: 16,right: 16),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.deepOrangeAccent,width: 1),
              borderRadius: BorderRadius.circular(20),
            ),

            child: DropdownButton(
              hint: Text('Select Items'),
              dropdownColor: Colors.white,
              icon: Icon(Icons.arrow_drop_down),

              iconSize: 30,
              isExpanded: true,
              style: TextStyle(color: Colors.black),
              underline: SizedBox(),

              value: valueChoose,
              onChanged: (newValue) {
                setState(() {
                  valueChoose = newValue;
                });
              },

              items: listItem.map((valueItem){
                return DropdownMenuItem(
                value: valueItem,
                child: Text(valueItem),
                );
              }).toList(),

            ),
          ),
        ),
     ),
    );

  }

}