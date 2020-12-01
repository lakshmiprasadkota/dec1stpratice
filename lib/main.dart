import 'package:flutter/material.dart';



void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isChecked = false;
  int selectedvalue = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("checked Box"),
      ),
      body: Column(
        children: [
           Text("Using checkbox list title"),
          Column(
            children: [
              Text("Select color"),
              CheckboxListTile(value: isChecked, autofocus: true, title: Text("green" , style: TextStyle(color: Colors.green),), onChanged: (val){
                setState(() {
                  isChecked = !isChecked;
                });
              }
              ),

              CheckboxListTile(value: isChecked, title: Text("red" , style: TextStyle(color: Colors.red),), onChanged: (val){
                setState(() {
                  isChecked = !isChecked;
                });
              }
              ),

              CheckboxListTile(value: isChecked, title: Text("yellow" , style: TextStyle(color: Colors.yellowAccent),), onChanged: (val){
                setState(() {
                  isChecked = !isChecked;
                });
              }
              ),
            ],
          ),


          Column(
            children: [
              Text("Slct  Gender"),
              RadioListTile(value: 0, title: Text('male'),  groupValue: selectedvalue, onChanged: (val){
                setState(() {
                  selectedvalue = val;
                });
              }),
              RadioListTile(value: 1, title: Text('female'), groupValue: selectedvalue, onChanged: (val){
                setState(() {
                  selectedvalue = val ;
                });
              }),
              RadioListTile(value: 2,  title: Text('others'), autofocus : true,groupValue: selectedvalue, onChanged: (val){
                setState(() {
                  selectedvalue = val ;
                });
              })
            ],
          ),


          Row(
            children: [
              Text("Slct  Gender"),

              Radio(value: 0,   groupValue: selectedvalue, onChanged: (val){
                setState(() {
                  selectedvalue = val ;
                });
              }),
              Radio(value: 1,  groupValue: selectedvalue, onChanged: (val){
                setState(() {
                  selectedvalue = val ;
                });
              }),
              Radio(value: 2,   autofocus : true,groupValue: selectedvalue, onChanged: (val){
                setState(() {
                  selectedvalue = val ;
                });
              })
            ],
          ),


          Column(
            children: [
              SwitchListTile(value: isChecked, title: Text("Save data"),
                  inactiveTrackColor: Colors.red,
                  dense: false,
                  subtitle: Text("click to save   "),
                  isThreeLine: false,
                  autofocus: true,
                  activeColor: Colors.yellowAccent,
                  inactiveThumbColor: Colors.pink,
                  activeTrackColor: Colors.green,  controlAffinity: ListTileControlAffinity.platform,
                  onChanged: (val){
                setState(() {
                  isChecked = val;
                });
              })
            ],
          )

        ],
      ),
    );
  }
}
