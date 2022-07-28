import 'package:flutter/material.dart';
import 'package:qrcode/qr/qr_create.dart';
import 'package:qrcode/qr/qr_scan.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const QRCeatePage(),
                  ),
                );
              },
              child: const Text(
                "QR Generate Page",
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const QRScanPage(),
                  ),
                );
              },
              child: const Text(
                "QR Scan Page",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
