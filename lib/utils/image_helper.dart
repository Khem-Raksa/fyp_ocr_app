import 'dart:io';
import 'package:image/image.dart' as ImageCropper;
import 'package:path_provider/path_provider.dart';

class ImageHelper {
  static Future<File> cropImage(
    File image,
    int? x,
    int? y,
    int? w,
    int? h,
  ) async {
    final img = await ImageCropper.decodeImageFile(image.path);
    ImageCropper.Image file =
        ImageCropper.copyCrop(img!, x: x!, y: y!, width: w!, height: h!);

    final jpegBytes = ImageCropper.encodeJpg(file);
    final String path = (await getApplicationDocumentsDirectory()).path;

    final convertedFile = await File("$path/$x").writeAsBytes(jpegBytes);
    return convertedFile;
  }

  static Future<File> flipImage(File img) async {
    final ImageCropper.Image? capturedImage =
        ImageCropper.decodeImage(await File(img.path).readAsBytes());
    final ImageCropper.Image orientedImage =
        ImageCropper.copyRotate(capturedImage!, angle: -90);
    img = await File(img.path)
        .writeAsBytes(ImageCropper.encodeJpg(orientedImage));
    return img;
  }
}
