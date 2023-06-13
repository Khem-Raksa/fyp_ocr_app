import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:get/get.dart';

import 'dart:io';

class ResultPage extends StatefulWidget {
  const ResultPage({super.key});

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {

  final TextEditingController _textEditingController = TextEditingController();
  final String _initialText = 'Some OCR Results';

   @override
  void initState() {
    super.initState();
    print("Initial State");
    _textEditingController.text = _initialText;
    print(_textEditingController.text);
    print("done");
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  Future<void> _exportToTxtFile() async {
    String text = _textEditingController.text;
    print("downloaddd");
    // Get the document directory
    Directory? directory = await getExternalStorageDirectory();
    if (directory == null) {
      // Handle error
      return;
    }

    // Create the TXT file
    File file = File('${directory.path}/result.txt');
    await file.writeAsString(text);

    // Show a snackbar with the file path
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Text exported to ${file.path}'),
      ),
    );
  }

  Future<void> _copyToClipboard() async {
    String text = _textEditingController.text;
    await Clipboard.setData(ClipboardData(text: text));
    // Show a snackbar to indicate that text has been copied to the clipboard
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        backgroundColor: Colors.green,
        content: Text('Result copied to clipboard!',style: TextStyle(color: Colors.white),),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Get.back();
        }, icon: const Icon(Icons.arrow_back_ios_new)),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
        bottom: Radius.circular(30),
      ),
        ),
        title: const Text("OCR Result"),
        centerTitle: true,
      ),
      body:  Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(  
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
             TextField(
              controller: _textEditingController,
              decoration: const InputDecoration(
                labelText: 'Result',
                border: OutlineInputBorder(),
              ),
              maxLines: null,
            ),
            const SizedBox(height: 16),
            Row(children: [
               Expanded(
                  child: ElevatedButton(
                    onPressed: _exportToTxtFile,
                    child: const Text('Export to TXT'),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: ElevatedButton(
                    onPressed: _copyToClipboard,
                    child: const Text('Copy to Clipboard'),
                  ),)
            ],)
          ],),
      ),
    );
  }
}