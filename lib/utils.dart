import 'package:file_picker/file_picker.dart';
import 'dart:io';
 
class FileUtils {
  static Future<List<String>> loadClassroom() async {
    File file = await FilePicker.getFile(type: FileType.ANY);
    if (file != null)
      return (await file.readAsLines());
    else
      return (null);
  }
}
