import 'package:chatonline/chat_screen.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() async {
  runApp(MyApp());

  /*QuerySnapshot snapshot = await Firestore.instance.collection('mensagens').getDocuments();
  snapshot.documents.forEach((d){
    print(d.data);
  });*/
  //print(snapshot.documents);
  /*Firestore.instance.collection('mensagens').snapshots().listen((dado){
    dado.documents.forEach((d){
      print(d.data);
    });
  });*/
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Chat Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        iconTheme: IconThemeData(
          color: Colors.blue,
        ),
      ),
      home: ChatScreen()
    );
  }
}
