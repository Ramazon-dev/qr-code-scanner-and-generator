import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QRCeatePage extends StatefulWidget {
  const QRCeatePage({Key? key}) : super(key: key);

  @override
  State<QRCeatePage> createState() => _QRCeatePageState();
}

class _QRCeatePageState extends State<QRCeatePage> {
  final controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("QR Code Generator"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              QrImage(
                data: controller.text,
                size: 400,
                backgroundColor: Colors.yellow,
              ),
              const SizedBox(height: 40),
              TextFormField(
                controller: controller,
                decoration: InputDecoration(
                  hintText: "EnterData",
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Colors.yellow,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Colors.tealAccent,
                    ),
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {
                      FocusScope.of(context).requestFocus(FocusNode());
                      setState(() {});
                    },
                    icon: const Icon(Icons.done, size: 30),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
