import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hr_app/src/core/enum/enum.dart';
import 'package:hr_app/src/core/router/router.dart';
import 'package:hr_app/src/module/admin/postion/cubit/positionadmin_cubit.dart';
import 'package:hr_app/src/module/admin/postion/widget/position.dart';

@RoutePage()
class PositionAdminPage extends StatelessWidget implements AutoRouteWrapper {
  const PositionAdminPage({super.key});
  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(create: (context) => PositionadminCubit()..getPosition(), child: this);
  }

  @override
  Widget build(BuildContext context) {
    final TextEditingController onSearch = TextEditingController();
    final cubit = context.read<PositionadminCubit>();

    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      appBar: AppBar(
        title: Text(
          "Position",
          style: GoogleFonts.poppins(color: Colors.white, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue.shade700,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await context.router.push(CreatePositionRoute());
          await cubit.getPosition();
        },
        shape: const CircleBorder(),
        child: const Icon(Icons.add),
      ),

      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: BlocBuilder<PositionadminCubit, PositionadminState>(
              builder: (context, state) {
                return TextField(
                  controller: onSearch,
                  onChanged: cubit.search,
                  decoration: InputDecoration(
                    hintText: "Search by department name...",
                    prefixIcon: const Icon(Icons.search),
                    suffixIcon: state.searchQuery.isNotEmpty
                        ? IconButton(
                            icon: const Icon(Icons.clear),
                            onPressed: () {
                              cubit.clearSearch();
                              onSearch.clear();
                            },
                          )
                        : null,
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                  ),
                );
              },
            ),
          ),
          Expanded(
            child: BlocBuilder<PositionadminCubit, PositionadminState>(
              builder: (context, state) {
                if (state.status == Status.loading) {
                  return const Center(child: CircularProgressIndicator());
                }
                return ListView.builder(
                  itemCount: state.filterPosition.length,
                  itemBuilder: (BuildContext context, int index) {
                    final position = state.filterPosition[index];
                    return PositionCard(
                      position_name: position.position_name,
                      position_salary: position.position_salary,
                      onUpdate: () async {
                        await context.router.push(CreatePositionRoute(id: position.position_id));
                        await cubit.getPosition();
                      },
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
