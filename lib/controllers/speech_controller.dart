import 'package:get/get.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;

class SpeechController extends GetxController {
  var speechText = ''.obs;
  stt.SpeechToText speech = stt.SpeechToText();

  void startListening() async {
    bool available = await speech.initialize();
    if (available) {
      speech.listen(onResult: (result) {
        speechText.value = result.recognizedWords;
      });
    }
  }

  void stopListening() {
    speech.stop();
  }
}