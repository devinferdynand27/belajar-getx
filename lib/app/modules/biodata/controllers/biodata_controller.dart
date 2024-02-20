import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class BiodataController extends GetxController {
  //TODO: Implement BiodataController

  var nama = ''.obs;
  var tanggalLahir = ''.obs;
  var agama = ''.obs;
  var jenisKelamin = ''.obs;
  var benefit = ''.obs;
  var payment = ''.obs;
  var alamat = ''.obs;
  var hobiList = ['menari', 'membaca', 'bernyanyi', 'sepakbola'];

  var hobi = <String>[].obs;

  List<String> getHobiList() => hobiList;

  var isFormSubmitted = false.obs;
  var selectedDate = ''.obs;

  Future<void> selectdate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime.now(),
        lastDate: DateTime.now());

    if (picked != null) {
      final formattedDate = DateFormat('yyyy-MM-dd').format(picked);
      selectedDate.value = formattedDate;
    }
  }

  void toggleHobi(String hobivalue) {
    if (hobi.contains(hobivalue)) {
      hobi.remove(hobivalue);
    } else {
      hobi.add(hobivalue);
    }
  }

  void submitFrom() {
    print(
        'data Formulir : $nama, $tanggalLahir , $agama , $jenisKelamin , $alamat , ${hobi.value}');
    isFormSubmitted.value = true;
  }
}
