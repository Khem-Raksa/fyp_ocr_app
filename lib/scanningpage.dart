// import 'package:camera/camera.dart';
// import 'package:flutter/material.dart';

// class ScanningPage extends StatefulWidget {
//   @override
//   _ScanningPageState createState() => _ScanningPageState();
// }

// class _ScanningPageState extends State<ScanningPage> {
//   CameraController? _controller;
//   Future<void>? _initializeControllerFuture;

//   Future<void> _initializeCamera() async {
//     final cameras = await availableCameras();
//     if (cameras.isNotEmpty) {
//         _controller = CameraController(
//         cameras[0],
//         ResolutionPreset.high,
//       );
//       _initializeControllerFuture = _controller?.initialize();
//       setState(() {});
//     } else {
//       // Handle no camera error
//       print('No camera available');
//     }
//   }

//   @override
//   void initState() {
//     super.initState();
//     _initializeCamera();
//   }

//   @override
//   void dispose() {
//     _controller?.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Document Scanning'),
//       ),
//       body: _controller!.value.isInitialized
//           ? Stack(
//               children: [
//                 CameraPreview(_controller!),
//                 Align(
//                   alignment: Alignment.center,
//                   child: Container(
//                     width: 300,
//                     height: 200,
//                     decoration: BoxDecoration(
//                       border: Border.all(color: Colors.white, width: 2),
//                     ),
//                   ),
//                 ),
//               ],
//             )
//           : const Center(
//               child: CircularProgressIndicator(),
//             ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           // Add scanning functionality here
//           print('Scanning document...');
//         },
//         child: const Icon(Icons.camera),
//       ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
//     );
//   }
// }
