import 'package:flutter/material.dart';

class CardLeaveWidget extends StatelessWidget {
  const CardLeaveWidget({
    super.key,
    required this.leaveType,
    required this.leaveState,
    required this.leaveStartAt,
    required this.leaveEndAt,
    required this.detail,
    required this.createdAt,
    required this.userId,
    this.imageUrl,
  });

  final String leaveType;
  final String userId;
  final String leaveState;
  final String leaveStartAt;
  final String leaveEndAt;
  final String detail;
  final String createdAt;
  final String? imageUrl;

  Color stateColor(String state) {
    switch (state.toLowerCase()) {
      case 'approved':
        return Colors.green;
      case 'rejected':
        return Colors.red;
      case 'pending':
      default:
        return Colors.orange;
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      elevation: 3,
      shadowColor: Colors.black12,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Icon(Icons.event_note_rounded, color: Colors.indigo, size: 22),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(
                    leaveType.toUpperCase(),
                    style: theme.textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w600, fontSize: 16, letterSpacing: 1.1),
                  ),
                ),
                Chip(
                  label: Text(
                    leaveState.toUpperCase(),
                    style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  backgroundColor: stateColor(leaveState),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                ),
              ],
            ),
            const SizedBox(height: 6),
            Text('User ID: $userId', style: theme.textTheme.bodySmall?.copyWith(color: Colors.grey.shade600)),
            const SizedBox(height: 16),
            const Divider(height: 1),
            const SizedBox(height: 16),
            Row(
              children: [
                const Icon(Icons.calendar_today_rounded, color: Colors.blueAccent, size: 20),
                const SizedBox(width: 8),
                Text('$leaveStartAt → $leaveEndAt', style: theme.textTheme.bodyMedium?.copyWith(fontSize: 15)),
              ],
            ),

            const SizedBox(height: 14),

            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(Icons.notes_rounded, color: Colors.grey, size: 20),
                const SizedBox(width: 8),
                Expanded(child: Text(detail, style: theme.textTheme.bodyMedium?.copyWith(fontSize: 15))),
              ],
            ),

            if (imageUrl != null) ...[
              const SizedBox(height: 14),
              ClipRRect(
                borderRadius: BorderRadius.circular(14),
                child: Image.network(
                  imageUrl!,
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: 160,
                  loadingBuilder: (context, child, progress) => progress == null ? child : const Center(child: CircularProgressIndicator()),
                  errorBuilder: (context, error, stackTrace) => Container(
                    height: 160,
                    color: Colors.grey.shade200,
                    child: const Center(child: Icon(Icons.broken_image, size: 40, color: Colors.grey)),
                  ),
                ),
              ),
            ],

            const SizedBox(height: 16),
            Align(
              alignment: Alignment.centerRight,
              child: Text('Created: $createdAt', style: theme.textTheme.bodySmall?.copyWith(color: Colors.grey)),
            ),
          ],
        ),
      ),
    );
  }
}
