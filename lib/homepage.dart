import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
        bottom: Radius.circular(30),
      ),
        ),
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
             OutlinedButton(
             onPressed: (){},
             style: OutlinedButton.styleFrom(
             side: const BorderSide(
             color: Colors.black
              )
             ), child: const Text("Upload Picture"),),
             OutlinedButton(
              onPressed: (){},
              style: OutlinedButton.styleFrom(
              side: const BorderSide(
              color: Colors.black
              )
             ), 
             child: const Text("Scan Document")
             )
          ],
        ),
      ),
      
    );
  }
}
