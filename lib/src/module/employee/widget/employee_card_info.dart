import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class EmployeeCardInfoWidget extends StatelessWidget {
  const EmployeeCardInfoWidget({super.key, required this.onTab, this.imagePath, this.email, this.username, this.tel, this.department});
  final Function() onTab;
  final String? imagePath;
  final String? email;
  final String? username;
  final String? tel;
  final String? department;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final validImage = imagePath != null && imagePath!.startsWith('http');
    return Container(
      width: size.width * 1.0,
      height: size.height * 0.12,
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(16), bottomRight: Radius.circular(16)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              InkWell(
                onTap: onTab,
                child: Stack(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.grey.shade200,
                      child: ClipOval(
                        child: validImage
                            ? CachedNetworkImage(
                                imageUrl: imagePath!,
                                fit: BoxFit.cover,
                                width: 60,
                                height: 60,
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
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.white, width: 2),
                        ),
                        child: const Icon(Icons.camera_alt, color: Colors.white, size: 12),
                      ),
                    ),
                  ],
                ),
              ),
              Gap(14),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    username ?? "",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.white),
                  ),
                  Text(
                    department ?? '',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: Colors.white),
                  ),
                  Text(
                    tel ?? '',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: Colors.white),
                  ),
                  Text(
                    email ?? "",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: Colors.white),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
