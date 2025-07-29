import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CardUserWidget extends StatelessWidget {
  const CardUserWidget({super.key, required this.name, required this.position, required this.onTab, this.imagePath});
  final String name;
  final String position;
  final Function() onTab;
  final String? imagePath;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final validImage = imagePath != null && imagePath!.startsWith('http');
    return Container(
      width: size.width,
      color: Colors.blue.shade50,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            InkWell(
              onTap: onTab,
              child: Stack(
                children: [
                  CircleAvatar(
                    radius: 60,
                    backgroundColor: Colors.grey.shade200,
                    child: ClipOval(
                      child: validImage
                          ? CachedNetworkImage(
                              imageUrl: imagePath!,
                              fit: BoxFit.cover,
                              width: 120,
                              height: 120,
                              progressIndicatorBuilder: (context, url, progress) => CircularProgressIndicator(value: progress.progress),
                              errorWidget: (context, url, error) => const Icon(Icons.error, color: Colors.red),
                            )
                          : const Icon(Icons.person, color: Colors.grey, size: 30),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white, width: 2),
                      ),
                      child: const Icon(Icons.camera_alt, color: Colors.white, size: 20),
                    ),
                  ),
                ],
              ),
            ),
            Gap(6),
            Text(name, overflow: TextOverflow.ellipsis),
            Text(position, overflow: TextOverflow.ellipsis),
          ],
        ),
      ),
    );
  }
}
