import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hr_app/src/core/widget/elevented_button.dart';
import 'package:intl/intl.dart';

class CardSalaryWidget extends StatelessWidget {
  const CardSalaryWidget({super.key, this.dateTime, this.salary, this.totalSalary, this.btnLabel, required this.onBtnClick});
  final DateTime? dateTime;
  final String? salary;
  final String? totalSalary;
  final String? btnLabel;
  final VoidCallback onBtnClick;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final formattedDate = dateTime != null ? 'ເດືອນ ${DateFormat('MMMM y', 'lo').format(dateTime!)}' : 'ບໍ່ມີວັນທີ';
    return Container(
      height: size.height * 0.3,
      padding: EdgeInsets.symmetric(horizontal: 20),
      width: double.infinity,
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "ງວດປົກກະຕິ",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Text(
              formattedDate,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            Gap(6),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("ເງີນເດືອນ", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.blue.withAlpha(50),
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(4), topRight: Radius.circular(4)),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                  child: Text(salary ?? "", style: TextStyle(fontWeight: FontWeight.bold)),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("ເງີນເດືອນທີ່ໄດ້ຮັບ", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.blue.withAlpha(50),
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(4), bottomRight: Radius.circular(4)),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                  child: Text(totalSalary ?? "", style: TextStyle(fontWeight: FontWeight.bold)),
                ),
              ],
            ),
            Gap(40),
            ReusableElevatedButton(label: btnLabel ?? "", onPressed: onBtnClick, backgroundColor: Colors.blue),
          ],
        ),
      ),
    );
  }
}
