import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class UiHelper {
  static customImage(
      {required String imageSource,
      double? height,
      double? width,
      BoxFit fit = BoxFit.cover}) {
    return CachedNetworkImage(
      imageUrl: imageSource,
      height: height,
      width: width,
      fit: fit,
      errorWidget: (context, url, error) {
        return Icon(Icons.broken_image);
      },
    );
  }
}
