import 'package:flutter/material.dart';

class History extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Data(
      )
      
    );
  }
}

class Data extends StatefulWidget {
  @override
  _DataState createState() => _DataState();
}

class _DataState extends State<Data> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(child: Center(
          child: Text("Ecom App UI",
          style: TextStyle(color: Colors.black),
    
          ),
        ),
        ),
      ),
     
      body: SingleChildScrollView(child: Column(children: [
        SizedBox(height: 30,),
       Center(
         child: Container(
           width: 350,
            child: Center(
              child: TextField(
                        autofocus: true,
                        decoration: InputDecoration(
                          hintText: " User Name",
                          border: InputBorder.none,
                          suffixIcon: IconButton(icon:Icon(Icons.search), onPressed: () { 
                          },)
   ),

          ),
            ),
         ),
       ),
       Text("History",
        textAlign: TextAlign.left
       ),
       historydata(),
       historydata(),
       historydata(),
      ]
      ),
      ),
      
    );
  }
}

Widget historydata(){
  return ListTile(
    leading: CircleAvatar(
      backgroundImage: AssetImage("assets/iphone.jpg"),
      radius: 20,
    ),
    title: Text("IPhone 12"),
    subtitle: Text("5.0 (23 Reviews)"),
    trailing: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text("\$" + "15"),
      ]
    ),
  );
}