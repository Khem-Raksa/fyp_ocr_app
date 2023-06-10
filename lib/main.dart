import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: const MaterialColor(0xff27374D, {
         50: Color(0xff27374D),
        100: Color(0xff27374D),
        200: Color(0xff27374D),
        300: Color(0xff27374D),
        400: Color(0xff27374D),
        500: Color(0xff27374D),
        600: Color(0xff27374D),
        700: Color(0xff27374D),
        800: Color(0xff27374D),
        900: Color(0xff27374D),
}),
      ),
      home: const MyHomePage(title: 'FYP OCR Demo App 🔎',),
    );
  }
}

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
