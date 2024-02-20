// ignore_for_file: prefer_const_constructors

import 'package:belajar2/app/modules/invoice/views/OutputInvoice.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/invoice_controller.dart';

class InvoiceView extends StatelessWidget {
  final InvoiceController invoiceController = Get.put(InvoiceController());
  InvoiceView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('InvoiceView'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Form(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      TextFormField(
                          decoration:
                              InputDecoration(labelText: "Nama Lengkap"),
                          onChanged: (value) =>
                              invoiceController.fullname.value = value),
                      SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                          decoration:
                              InputDecoration(labelText: "placeOfBirth"),
                          onChanged: (value) =>
                              invoiceController.placeOfBirth.value = value),
                      SizedBox(
                        height: 15,
                      ),
                      InkWell(
                        onTap: () => invoiceController.selectdate(context),
                        child: InputDecorator(
                          decoration: InputDecoration(
                            labelText: "Tanggal Lahir",
                            hintText: "Pilih Tanggal",
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Tanggal Lahir :"),
                              Obx(() =>
                                  Text(invoiceController.dateOfBirth.value))
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          Text("jenis Kelamin : "),
                          Obx(() => Radio(
                              value: 'Laki-laki',
                              groupValue: invoiceController.gender.value,
                              onChanged: (value) =>
                                  invoiceController.gender.value = value!)),
                          Text("laki-laki"),
                          Obx(() => Radio(
                              value: 'perempuan',
                              groupValue: invoiceController.gender.value,
                              onChanged: (value) =>
                                  invoiceController.gender.value = value!)),
                          Text("perempuan"),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                          decoration: InputDecoration(labelText: "email"),
                          onChanged: (value) =>
                              invoiceController.email.value = value),
                      SizedBox(
                        height: 15,
                      ),
                      DropdownButtonFormField(
                        items: [
                          "Afghanistan",
                          "Albania",
                          "Algeria",
                          "Andorra",
                          "Angola",
                          "Anguilla",
                          "Antigua &amp; Barbuda",
                          "Argentina",
                          "Armenia",
                          "Aruba",
                          "Australia",
                          "Austria",
                          "Azerbaijan",
                          "Bahamas",
                          "Bahrain",
                          "Bangladesh",
                          "Barbados",
                          "Belarus",
                          "Belgium",
                          "Belize",
                          "Benin",
                          "Bermuda",
                          "Bhutan",
                          "Bolivia",
                          "Bosnia &amp; Herzegovina",
                          "Botswana",
                          "Brazil",
                          "British Virgin Islands",
                          "Brunei",
                          "Bulgaria",
                          "Burkina Faso",
                          "Burundi",
                          "Cambodia",
                          "Cameroon",
                          "Cape Verde",
                          "Cayman Islands",
                          "Chad",
                          "Chile",
                          "China",
                          "Colombia",
                          "Congo",
                          "Cook Islands",
                          "Costa Rica",
                          "Cote D Ivoire",
                          "Croatia",
                          "Cruise Ship",
                          "Cuba",
                          "Cyprus",
                          "Czech Republic",
                          "Denmark",
                          "Djibouti",
                          "Dominica",
                          "Dominican Republic",
                          "Ecuador",
                          "Egypt",
                          "El Salvador",
                          "Equatorial Guinea",
                          "Estonia",
                          "Ethiopia",
                          "Falkland Islands",
                          "Faroe Islands",
                          "Fiji",
                          "Finland",
                          "France",
                          "French Polynesia",
                          "French West Indies",
                          "Gabon",
                          "Gambia",
                          "Georgia",
                          "Germany",
                          "Ghana",
                          "Gibraltar",
                          "Greece",
                          "Greenland",
                          "Grenada",
                          "Guam",
                          "Guatemala",
                          "Guernsey",
                          "Guinea",
                          "Guinea Bissau",
                          "Guyana",
                          "Haiti",
                          "Honduras",
                          "Hong Kong",
                          "Hungary",
                          "Iceland",
                          "India",
                          "Indonesia",
                          "Iran",
                          "Iraq",
                          "Ireland",
                          "Isle of Man",
                          "Italy",
                          "Jamaica",
                          "Japan",
                          "Jersey",
                          "Jordan",
                          "Kazakhstan",
                          "Kenya",
                          "Kuwait",
                          "Kyrgyz Republic",
                          "Laos",
                          "Latvia",
                          "Lebanon",
                          "Lesotho",
                          "Liberia",
                          "Libya",
                          "Liechtenstein",
                          "Lithuania",
                          "Luxembourg",
                          "Macau",
                          "Macedonia",
                          "Madagascar",
                          "Malawi",
                          "Malaysia",
                          "Maldives",
                          "Mali",
                          "Malta",
                          "Mauritania",
                          "Mauritius",
                          "Mexico",
                          "Moldova",
                          "Monaco",
                          "Mongolia",
                          "Montenegro",
                          "Montserrat",
                          "Morocco",
                          "Mozambique",
                          "Namibia",
                          "Nepal",
                          "Netherlands",
                          "Netherlands Antilles",
                          "New Caledonia",
                          "New Zealand",
                          "Nicaragua",
                          "Niger",
                          "Nigeria",
                          "Norway",
                          "Oman",
                          "Pakistan",
                          "Palestine",
                          "Panama",
                          "Papua New Guinea",
                          "Paraguay",
                          "Peru",
                          "Philippines",
                          "Poland",
                          "Portugal",
                          "Puerto Rico",
                          "Qatar",
                          "Reunion",
                          "Romania",
                          "Russia",
                          "Rwanda",
                          "Saint Pierre &amp; Miquelon",
                          "Samoa",
                          "San Marino",
                          "Satellite",
                          "Saudi Arabia",
                          "Senegal",
                          "Serbia",
                          "Seychelles",
                          "Sierra Leone",
                          "Singapore",
                          "Slovakia",
                          "Slovenia",
                          "South Africa",
                          "South Korea",
                          "Spain",
                          "Sri Lanka",
                          "St Kitts &amp; Nevis",
                          "St Lucia",
                          "St Vincent",
                          "St. Lucia",
                          "Sudan",
                          "Suriname",
                          "Swaziland",
                          "Sweden",
                          "Switzerland",
                          "Syria",
                          "Taiwan",
                          "Tajikistan",
                          "Tanzania",
                          "Thailand",
                          "Timor L'Este",
                          "Togo",
                          "Tonga",
                          "Trinidad &amp; Tobago",
                          "Tunisia",
                          "Turkey",
                          "Turkmenistan",
                          "Turks &amp; Caicos",
                          "Uganda",
                          "Ukraine",
                          "United Arab Emirates",
                          "United Kingdom",
                          "Uruguay",
                          "Uzbekistan",
                          "Venezuela",
                          "Vietnam",
                          "Virgin Islands (US)",
                          "Yemen",
                          "Zambia",
                          "Zimbabwe"
                        ]
                            .map((nationality) => DropdownMenuItem(
                                  value: nationality,
                                  child: Text(nationality),
                                ))
                            .toList(),
                        onChanged: (value) => invoiceController
                            .nationality.value = value.toString(),
                        decoration: InputDecoration(labelText: 'nationality'),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      DropdownButtonFormField(
                        items: invoiceController.listmember
                            .map((a) => DropdownMenuItem(
                                  value: a,
                                  child: Text('${a['member']} - ${a['harga']}'),
                                ))
                            .toList(),
                        onChanged: (value) {
                          invoiceController.benefit.value =
                              value!['benefit'].toString();
                          invoiceController.payment.value =
                              value['harga'].toString();
                          invoiceController.typeOfmember.value =
                              value['member'].toString();
                        },
                        decoration:
                            InputDecoration(labelText: 'typeOfMembership'),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                          decoration: InputDecoration(labelText: "card number"),
                          onChanged: (value) =>
                              invoiceController.CardNumber.value = value),
                      SizedBox(
                        height: 15,
                      ),
                      InkWell(
                          onTap: () => invoiceController.selectexpired(context),
                          child: InputDecorator(
                            decoration: InputDecoration(
                              labelText: "Expired Date",
                              hintText: "Expired Date",
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Expired Date :"),
                                Obx(() =>
                                    Text(invoiceController.selectExpired.value))
                              ],
                            ),
                          )),
                      SizedBox(
                        height: 15,
                      ),
                      Obx(() => Text('harga : ${invoiceController.payment}')),
                      SizedBox(
                        height: 30,
                      ),
                      ElevatedButton(
                        // onPressed: () => invoiceController.submitFrom(),
                        onPressed: () {
                          // Berpindah ke halaman berikutnya
                          Get.to(OutputInvoice());
                        },
                        child: Text('kirim'),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
