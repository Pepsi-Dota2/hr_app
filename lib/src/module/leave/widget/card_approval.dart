import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hr_app/src/core/widget/button_ontab.dart';

class CardApprovalWidget extends StatelessWidget {
  const CardApprovalWidget({
    super.key,
    this.imagePath,
    this.approve,
    this.reject,
    this.rejectText,
    this.approveText,
    this.approverName,
    this.approverPosition,
    this.approverDepartment,
    this.approverDate,
    this.approverTime,
    this.approverStatus,
  });

  final String? imagePath;
  final VoidCallback? approve;
  final VoidCallback? reject;
  final String? rejectText;
  final String? approveText;
  final String? approverName;
  final String? approverPosition;
  final String? approverDepartment;
  final String? approverDate;
  final String? approverTime;
  final String? approverStatus;

  @override
  Widget build(BuildContext context) {
    final validImage = imagePath != null && imagePath!.startsWith('http');
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 1.0,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // Avatar
            CircleAvatar(
              radius: 50,
              backgroundColor: Colors.grey.shade100,
              child: ClipOval(
                child: validImage
                    ? CachedNetworkImage(
                        imageUrl: imagePath!,
                        fit: BoxFit.cover,
                        width: 100,
                        height: 100,
                        progressIndicatorBuilder: (context, url, progress) => CircularProgressIndicator(value: progress.progress),
                        errorWidget: (context, url, error) => const Icon(Icons.error, color: Colors.red),
                      )
                    : const Icon(Icons.person, color: Colors.grey, size: 40),
              ),
            ),
            const Gap(12),
            Text(
              '${approverPosition ?? ''}${approverPosition != null && approverDepartment != null ? ' • ' : ''}${approverDepartment ?? ''}',
              style: const TextStyle(color: Colors.grey),
            ),
            Text(
              '${approverDate ?? ''}${approverDate != null && approverTime != null ? ' • ' : ''}${approverTime ?? ''}',
              style: const TextStyle(fontSize: 13, color: Colors.grey),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 4),
              child: Chip(
                label: Text(approverStatus!, style: const TextStyle(color: Colors.white)),
                backgroundColor: _statusColor(approverStatus),
              ),
            ),
            const Gap(16),
            // Row(
            //   children: [
            //     Expanded(
            //       child: BtnButtonOnTabWidget(
            //         label: rejectText ?? 'Reject',
            //         onTab: reject,
            //         color: Colors.red,
            //         labelColor: Colors.white,
            //         fontWeight: FontWeight.bold,
            //       ),
            //     ),
            //     const Gap(12),
            //     Expanded(
            //       child: BtnButtonOnTabWidget(
            //         label: approveText ?? 'Approve',
            //         onTab: approve,
            //         color: Colors.green,
            //         labelColor: Colors.white,
            //         fontWeight: FontWeight.bold,
            //       ),
            //     ),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }

  Color _statusColor(String? status) {
    switch (status?.toLowerCase()) {
      case 'approved':
        return Colors.green;
      case 'rejected':
        return Colors.red;
      case 'pending':
        return Colors.orange;
      default:
        return Colors.grey;
    }
  }
}
