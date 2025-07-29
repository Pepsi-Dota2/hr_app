import 'package:flutter/material.dart';

class ListTileWidget extends StatelessWidget {
  const ListTileWidget({super.key, this.name, required this.onTab});
  final String? name;
  final VoidCallback onTab;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade200),
          color: Colors.grey.shade100,
          borderRadius: BorderRadius.circular(10),
        ),
        child: ListTile(
          contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          title: Text(name ?? "", style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w600)),
          trailing: const Icon(Icons.logout),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          onTap: onTab,
        ),
      ),
    );
  }
}
