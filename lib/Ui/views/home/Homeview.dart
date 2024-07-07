import 'package:flutter/material.dart';
import 'package:flutter_application_1/Ui/views/home/Scan/Scan_QR_code.dart';
import 'package:pretty_qr_code/pretty_qr_code.dart';

class Homeview extends StatefulWidget {
  const Homeview({super.key});

  @override
  State<Homeview> createState() => _HomeviewState();
}

class _HomeviewState extends State<Homeview> {
  String? qrData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[50],
          title: Text(
            'Generate QR Code',
            style: TextStyle(
                fontSize: 23,
                letterSpacing: 1,
                fontWeight: FontWeight.bold,
                color: Colors.black),
          ),
          actions: [
            Padding(
                padding: EdgeInsets.only(right: 5),
                child: IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ScanQrCode()));
                    },
                    icon: Icon(
                      Icons.qr_code_scanner,
                      color: Colors.black,
                      size: 30,
                    )))
          ],
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.all(10),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Enter URL',
                      labelStyle: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[600]),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    onFieldSubmitted: (value) {
                      setState(() {
                        qrData = value;
                      });
                    },
                  ),
                ),
                if (qrData != null) PrettyQrView.data(data: qrData!),
              ],
            ),
          ),
        ));
  }
}
