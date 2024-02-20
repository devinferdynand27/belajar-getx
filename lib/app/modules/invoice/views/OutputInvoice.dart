import 'package:belajar2/app/modules/invoice/controllers/invoice_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OutputInvoice extends StatelessWidget {
  final InvoiceController dataController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Halaman Output')),
      body: Center(
        child: Container(
          child: Column(
            children: [
              Container(
                child: Text('Nama Lengkap: ${dataController.fullname}'),
              ),
              Container(
                child: Text('tempat lahir: ${dataController.placeOfBirth}'),
              ),
              Container(
                child: Text('Umur: ${dataController.umur}'),
              ),
              Container(
                child: Text('gender: ${dataController.gender}'),
              ),
              Container(
                child: Text('email: ${dataController.email}'),
              ),
              Container(
                child: Text('typeOfMembership: ${dataController.typeOfmember}'),
              ),
              Container(
                child: Text('nationality: ${dataController.nationality}'),
              ),
              Container(
                child: Text('nationality: ${dataController.CardNumber}'),
              ),
              Container(
                child: Text('harga: ${dataController.payment}'),
              ),
              Container(
                child: Text('Expired: ${dataController.selectExpired}'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
