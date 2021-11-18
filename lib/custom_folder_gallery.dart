
import 'dart:async';

import 'package:flutter/services.dart';

class CustomFolderGallery {
  static const MethodChannel _channel = MethodChannel('custom_folder_gallery');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  static Future<bool> get createFolder async {
    return await _channel.invokeMethod('createFolder', {"path" : path});
  }
}