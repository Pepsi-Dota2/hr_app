import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key, required this.startTime, required this.endTime, required this.startWork, required this.endWork, this.dateTime});
  final String startTime;
  final String endTime;
  final String startWork;
  final String endWork;
  final DateTime? dateTime;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final formattedDate = dateTime != null ? DateFormat('EEEE d MMMM y', 'lo').format(dateTime!) : 'ບໍ່ມີວັນທີ';

    return Container(
      width: size.width * 1.0,
      height: size.height * 0.12,
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Gap(10),
          Text(formattedDate),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [Text("ມຶ້ເຂົ້າເຮັດວຽກ : "), Text(startTime), Text("-"), Text(endTime)]),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Text('ເວລາເຂົ້າວຽກ'),
                  Text(startWork, style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
              Column(
                children: [
                  Text('ເວລາອອກວຽກ'),
                  Text(endWork, style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
