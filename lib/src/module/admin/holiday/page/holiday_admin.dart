import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hr_app/src/core/enum/enum.dart';
import 'package:hr_app/src/module/admin/holiday/cubit/holiday_admin_cubit.dart';
import 'package:intl/intl.dart';

@RoutePage()
class HolidayAdminPage extends StatelessWidget implements AutoRouteWrapper {
  const HolidayAdminPage({super.key});
  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(create: (context) => HolidayAdminCubit()..getHoliday(), child: this);
  }

  @override
  Widget build(BuildContext context) {
    final dateFormat = DateFormat('d MMM yyyy');
    return Scaffold(
      appBar: AppBar(
        title: Text("Holiday", style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: BlocBuilder<HolidayAdminCubit, HolidayAdminState>(
        builder: (context, state) {
          if (state.status == Status.loading) {
            return const Center(child: CircularProgressIndicator());
          }

          if (state.status == Status.failure) {
            return const Center(child: Text("Failed to load holidays"));
          }

          if (state.holiday.isEmpty) {
            return const Center(child: Text("No holidays found"));
          }

          return ListView.separated(
            padding: const EdgeInsets.all(12),
            itemCount: state.holiday.length,
            separatorBuilder: (_, __) => const SizedBox(height: 12),
            itemBuilder: (BuildContext context, int index) {
              final item = state.holiday[index];

              DateTime? startDate;
              DateTime? endDate;

              try {
                startDate = DateTime.parse(item.holiday_start_date);
                endDate = DateTime.parse(item.holiday_end_date);
              } catch (_) {}

              return Card(
                elevation: 4,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item.holiday_name ?? 'Unnamed Holiday',
                        style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 8),
                      if (startDate != null && endDate != null)
                        Text(
                          startDate == endDate ? dateFormat.format(startDate) : '${dateFormat.format(startDate)} - ${dateFormat.format(endDate)}',
                          style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.grey[700]),
                        ),
                      const SizedBox(height: 8),
                      Text('Reason: ${item.reason ?? "-"}', style: Theme.of(context).textTheme.bodySmall),
                      const SizedBox(height: 8),
                      Text('Approved by: ${item.approved_by ?? "N/A"}', style: Theme.of(context).textTheme.bodySmall),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
