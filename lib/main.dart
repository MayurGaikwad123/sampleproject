import 'package:flutter/material.dart';

void main() 
{
  runApp
  (
     MyApp()
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp
    (
      home: Scaffold
      (
        appBar: new AppBar(title: Text("My Dynamic ListView"),),
        body: MyDynamicListView(),
      )
    );
  }
}



class MyDynamicListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) 
  {
     final name = [ 'Mayur','Manoj', 'Ranjeet', 'Ganesh', 'MayurP', 'Vivek', 'karan', 'Manak', 'Vaishnavi', 
     'Manali', 'Monali', 'Pallavi' ];


    return ListView.builder
    (
       itemCount: name.length,

       itemBuilder: (context, index){

         return ListTile
         (
           title: new Text(name[index]),
         );
       },
    );
  }
}