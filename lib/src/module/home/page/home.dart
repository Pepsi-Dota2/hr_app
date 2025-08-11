import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:hr_app/src/core/router/router.dart';
import 'package:hr_app/src/core/utils/format_time.dart';
import 'package:hr_app/src/module/home/cubit/home_cubit.dart';
import 'package:hr_app/src/module/home/widget/card.dart';
import 'package:hr_app/src/module/home/widget/card_feature.dart';
import 'package:intl/intl.dart';

@RoutePage()
class HomePage extends StatelessWidget implements AutoRouteWrapper {
  const HomePage({super.key});
  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit()
        ..scheduleNextUpdate()
        ..getRecord()
        ..getHoliday(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home", style: TextStyle(color: Colors.white)),
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.blue,
      ),
      backgroundColor: Colors.blue.shade50,
      body: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          return RefreshIndicator(
            onRefresh: () async {},
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("ຂໍ້ມູນປະຈຳວັນ", style: TextStyle(fontWeight: FontWeight.bold)),
                  Gap(6),
                  CardWidget(
                    startTime: '9:00 - 12:00',
                    endTime: '13:00 - 18:00',
                    startWork: formatTime(state.getStart),
                    endWork: formatTime(state.endtime),
                    dateTime: state.date,
                  ),
                  Gap(10),
                  // Remove Row and use padding inside Card for spacing
                  Card(
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('1 ພະນັກງານຈະໄດ້ພັກກິນເຂົ້າທ່ຽງໃນມື້ເຮັດວຽກ ມື້ລະ 1ຊົ່ວໂມງ ຄືເວລາກິນເຂົ້າທ່ຽງ 12:00-13:00'),
                          SizedBox(height: 8),
                          Text('2 ພະນັກງານຫ້ອງການທຸກຄົນອາທິດ1ຈະໄດ້ພັກ2ມື້ຕາມຕາຕະລາງພັກ ຂອງຕົນເອງ'),
                          SizedBox(height: 8),
                          Text('3 ຂາດວຽກບໍ່ມີເຫດຜົນ ຈະຕັດເງີນ 5%ຂອງເງີນເດືອນທັງໝົດ'),
                          SizedBox(height: 8),
                          Text('4 ກໍລະນີມາວຽກຊ້າເກີນ3ຄັ້ງ ຈະຕັດເງີນມື້1ເທົ່າກັບ 5%ຂອງເງີນເດືອນທັງໝົດ'),
                        ],
                      ),
                    ),
                  ),
                  Gap(8),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 3,
                      crossAxisSpacing: 12,
                      mainAxisSpacing: 12,
                      childAspectRatio: 1.0,
                      children: [
                        CardFeature(icon: Icons.people, label: 'employee', onTap: () => context.router.push(EmployeeRoute())),
                        CardFeature(icon: Icons.attach_money, label: 'Salary ', onTap: () => context.router.push(SalaryRoute())),
                        CardFeature(icon: Icons.calendar_today, label: 'Leave', onTap: () => context.router.push(LeaveRoute())),
                      ],
                    ),
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: state.holiday.length,
                    itemBuilder: (context, index) {
                      final holiday = state.holiday[index];
                      final startDate = DateTime.parse(holiday.holiday_start_date);
                      final endDate = DateTime.parse(holiday.holiday_end_date);
                      final formattedStartDate = DateFormat.yMMMMd().format(startDate); // e.g. August 11, 2025
                      final formattedEndDate = DateFormat.yMMMMd().format(endDate);
                      return Card(
                        margin: const EdgeInsets.symmetric(vertical: 4),
                        child: ListTile(
                          title: Text(holiday.holiday_name, style: const TextStyle(fontWeight: FontWeight.bold)),
                          subtitle: Text("Reason: ${holiday.reason}"),
                          trailing: Column(mainAxisAlignment: MainAxisAlignment.center, children: [Text(formattedStartDate), Text(formattedEndDate)]),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
