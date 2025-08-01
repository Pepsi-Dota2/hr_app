import 'dart:io';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class UploadImageWidget extends StatelessWidget {
  const UploadImageWidget({super.key, this.imagePath, required this.onTab, this.onClear});

  final String? imagePath;
  final VoidCallback onTab;
  final VoidCallback? onClear;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    Widget imageWidget;

    if (imagePath == null) {
      imageWidget = const Icon(Icons.cloud_upload, size: 80, color: Colors.black);
    } else if (imagePath!.startsWith('http')) {
      imageWidget = CachedNetworkImage(
        imageUrl: imagePath!,
        fit: BoxFit.cover,
        width: double.infinity,
        height: double.infinity,
        progressIndicatorBuilder: (context, url, progress) => Center(child: CircularProgressIndicator(value: progress.progress)),
        errorWidget: (context, url, error) => const Icon(Icons.error, color: Colors.red),
      );
    } else {
      imageWidget = Image.file(
        File(imagePath!),
        fit: BoxFit.cover,
        width: double.infinity,
        height: double.infinity,
        errorBuilder: (context, error, stackTrace) => const Icon(Icons.error, color: Colors.red),
      );
    }

    return InkWell(
      onTap: onTab,
      child: Container(
        width: size.width,
        height: size.height * 0.2,
        decoration: BoxDecoration(color: Colors.grey.shade400, borderRadius: BorderRadius.circular(8), border: Border.all(width: 1)),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Stack(
            fit: StackFit.expand,
            children: [
              imageWidget,
              if (imagePath != null && onClear != null)
                Positioned(
                  top: 8,
                  right: 8,
                  child: GestureDetector(
                    onTap: onClear,
                    child: Container(
                      decoration: BoxDecoration(color: Colors.black.withOpacity(0.6), shape: BoxShape.circle),
                      padding: const EdgeInsets.all(4),
                      child: const Icon(Icons.close, size: 20, color: Colors.white),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
