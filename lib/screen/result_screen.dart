import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fyp_ocr_app/provider/ocr_provider.dart';
import 'package:provider/provider.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<OcrProvider>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
        title: const Text("Result"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Consumer<OcrProvider>(
                builder: (context, provider, child) => ListView.builder(
                  shrinkWrap: true,
                  itemCount: provider.result.text?.length,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (
                    BuildContext context,
                    index,
                  ) {
                    return Column(
                      children: [
                        Image.file(
                          provider.crop[index],
                          width: 120,
                          height: 120,
                        ),
                        Text(
                          provider.result.text![index],
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
