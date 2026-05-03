import 'package:speech_to_text/speech_to_text.dart';
import 'package:flutter_tts/flutter_tts.dart';

class VoiceEngine {
  final SpeechToText stt = SpeechToText();
  final FlutterTts tts = FlutterTts();

  Future init() async {
    await stt.initialize();
    await tts.setLanguage("en-US");
    await tts.setSpeechRate(0.5);
  }

  Future<String> listen() async {
    String result = "";

    await stt.listen(onResult: (val) {
      result = val.recognizedWords;
    });

    await Future.delayed(const Duration(seconds: 4));
    stt.stop();

    return result;
  }

  Future speak(String text) async {
    await tts.speak(text);
  }
}
