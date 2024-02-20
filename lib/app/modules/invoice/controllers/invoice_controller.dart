import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class InvoiceController extends GetxController {
  //TODO: Implement InvoiceController

  var fullname = ''.obs;
  var placeOfBirth = ''.obs;
  var dateOfBirth = ''.obs;
  var gender = 'Laki-laki'.obs;
  var email = ''.obs;
  var typeOfMembership = ''.obs;

  var nationality = ''.obs;

  var CardNumber = ''.obs;

  var selectExpired = ''.obs;
  var payment = ''.obs;
  var typeOfmember = ''.obs;
  var benefit = ''.obs;
  var umur = ''.obs;

  var listmember = [
    {'member': 'reguler', 'harga': 50000, 'benefit': 'anggota 1 bulan'},
    {
      'member': 'gold',
      'harga': 100000,
      'benefit': 'anggota 1 bulan + cemilan gratis'
    },
    {
      'member': 'platinum',
      'harga': 200000,
      'benefit': 'anggota 1 bulan + cemilan gratis + free Wifi'
    },
    {
      'member': 'Vip',
      'harga': 500000,
      'benefit': 'anggota 1 bulan + cemilan gratis + tiket konser'
    },
  ];

  Future<void> selectdate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      firstDate: DateTime(2000),
      initialDate: DateTime.now(),
      lastDate: DateTime.now(),
    );

    if (picked != null) {
      final formattedDate = DateFormat('yyyy-MM-dd').format(picked);
      dateOfBirth.value = formattedDate;
      DateTime now = DateTime.now();
      DateTime selectedDate = picked;
      int age = now.year - selectedDate.year;

      if (now.month < selectedDate.month ||
          (now.month == selectedDate.month && now.day < selectedDate.day)) {
        age--;
      }
      umur.value = '${age}';
    }
  }

  Future<void> selectexpired(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        firstDate: DateTime.now(),
        initialDate: DateTime.now(),
        lastDate: DateTime(2100));

    if (picked != null) {
      final formattedDate = DateFormat('yyyy-MM-dd').format(picked);
      selectExpired.value = formattedDate;
    }
  }

  void submitFrom() {
    print(
        'data Formulir : $fullname, $placeOfBirth , $nationality, $dateOfBirth ,$umur , $gender , $email , $typeOfMembership , $CardNumber , $selectExpired ,$payment , ');
  }
}
