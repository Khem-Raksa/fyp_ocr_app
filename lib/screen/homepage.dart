import 'package:flutter/material.dart';
import 'package:fyp_ocr_app/provider/ocr_provider.dart';
import 'package:fyp_ocr_app/screen/result_screen.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late XFile? selectedFile;
  late final ocrProvider;

  @override
  void initState() {
    super.initState();
    ocrProvider = Provider.of<OcrProvider>(context, listen: false);
  }

  chooseImage() async {
    final ImagePicker picker = ImagePicker();
    selectedFile = await picker.pickImage(source: ImageSource.gallery);
    if (selectedFile == null) {
      return;
    }
    if (context.mounted) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const ResultScreen(),
        ),
      );
    }
    await ocrProvider.getOcrResult(selectedFile);
  }

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
              onPressed: () async {
                await chooseImage();
              },
              style: OutlinedButton.styleFrom(
                side: const BorderSide(color: Colors.black),
              ),
              child: const Text("Upload Picture"),
            ),
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                  side: const BorderSide(color: Colors.black)),
              child: const Text("Scan Document"),
            )
          ],
        ),
      ),
    );
  }
}
