import 'package:flutter/material.dart';

final kBorderRadius = BorderRadius.circular(20);

ImageProvider getImage(String imgStr) {
  if (imgStr.startsWith('http')) {
    return NetworkImage(imgStr);
  }
  return AssetImage(imgStr);
}
