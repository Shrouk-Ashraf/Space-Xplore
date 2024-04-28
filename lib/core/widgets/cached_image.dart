import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:space_app/core/theming/colors.dart';

class CachedImage extends StatelessWidget {
  const CachedImage({
    super.key,
    required this.networkImageUrl,
    required this.height,
    required this.width,
  });

  final String networkImageUrl;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: networkImageUrl,
      imageBuilder: (context, imageProvider) => Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: imageProvider,
            fit: BoxFit.fill,
            filterQuality: FilterQuality.high,
          ),
        ),
      ),
      placeholder: (context, url) => Center(
        child: SizedBox(
          height: height,
          width: width,
          child: const Center(
            child: CircularProgressIndicator(
              color: ColorsManager.blue,
            ),
          ),
        ),
      ),
      errorWidget: (context, url, error) => const Icon(
        Icons.error,
        color: ColorsManager.blue,
      ),
    );
  }
}
