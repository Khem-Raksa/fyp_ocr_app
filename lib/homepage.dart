import 'package:flutter/material.dart';
import 'package:fyp_ocr_app/resultpage.dart';
import 'package:fyp_ocr_app/scanningpage.dart';
import 'package:get/get.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // String? _selectedFilePath;

  // Future<void> _openFilePicker() async {
  //   final typeGroup = XTypeGroup(label: 'All Files', extensions: ['*']);
  //   final file = await openFile(acceptedTypeGroups: [typeGroup]);

  //   if (file != null) {
  //     setState(() {
  //       _selectedFilePath = file.path;
  //     });
  //   } else {
  //     print('No file selected');
  //   }
  // }

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
             onPressed: (){
              // _openFilePicker();
             },
             style: OutlinedButton.styleFrom(
             side: const BorderSide(
             color: Colors.black
              )
             ), child: const Text("Upload Picture"),),
             OutlinedButton(
              onPressed: (){
                // Get.to(ScanningPage());
                   Get.to(ResultPage());
              },
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
