import 'dart:io';

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
    return Container(
      width: size.width,
      color: Colors.white,
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
                    backgroundImage: imagePath != null ? FileImage(File(imagePath!)) : null,
                    child: imagePath == null ? const Icon(Icons.person, color: Colors.grey, size: 60) : null,
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
