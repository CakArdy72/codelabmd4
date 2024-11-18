import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/speech_controller.dart';

class SpeechScreen extends StatelessWidget {
  final SpeechController controller = Get.put(SpeechController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pengenalan Suara'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(() => Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              controller.speechText.value.isEmpty
                  ? 'Tekan tombol mikrofon'
                  : controller.speechText.value,
              style: TextStyle(fontSize: 24),
              textAlign: TextAlign.center,
            ),
          )),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: controller.startListening,
                child: Icon(Icons.mic),
              ),
              SizedBox(width: 20),
              ElevatedButton(
                onPressed: controller.stopListening,
                child: Icon(Icons.stop),
              ),
            ],
          ),
        ],
      ),
    );
  }
}