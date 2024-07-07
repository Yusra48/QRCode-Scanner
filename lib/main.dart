import 'package:flutter/material.dart';
import 'package:flutter_application_1/Ui/views/Screens/SplashScreen.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:mobile_scanner/mobile_scanner.dart';

void main() {
  final String scriptUrl =
      kIsWeb ? 'https://example.com/your-barcode-library.js' : '';
  if (kIsWeb) {
    MobileScannerPlatform.instance.setBarcodeLibraryScriptUrl(scriptUrl);
  }
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
