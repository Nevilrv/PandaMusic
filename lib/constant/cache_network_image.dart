import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';

class CachedImage extends StatelessWidget {
  final String url;

  const CachedImage({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: url,
      fit: BoxFit.fill,
      errorWidget: (context, url, error) => Padding(
        padding: EdgeInsets.all(15.0),
        child: Icon(Icons.error_outline),
      ),
      progressIndicatorBuilder: (context, url, downloadProgress) =>
          Shimmer.fromColors(
        baseColor: Colors.white.withOpacity(0.4),
        highlightColor: Colors.white.withOpacity(0.2),
        enabled: true,
        child: Container(
          height: Get.height * 0.125,
          color: Colors.white,
        ),
      ),
    );
  }
}


