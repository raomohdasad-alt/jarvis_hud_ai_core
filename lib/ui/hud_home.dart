import 'package:flutter/material.dart';
import '../core/ai_brain.dart';
import '../core/voice_engine.dart';

class HUDHome extends StatefulWidget {
  const HUDHome({super.key});

  @override
  State<HUDHome> createState() => _HUDHomeState();
}

class _HUDHomeState extends State<HUDHome> {
  final AIBrain brain = AIBrain();
  final VoiceEngine voice = VoiceEngine();

  String status = "JARVIS ONLINE";

  @override
  void initState() {
    super.initState();
    voice.init();
  }

  void activate() async {
    setState(() => status = "Listening...");

    String input = await voice.listen();

    String reply = brain.process(input);

    await voice.speak(reply);

    setState(() => status = reply);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "JARVIS HUD",
              style: TextStyle(
                color: Colors.cyanAccent,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              status,
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.white),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: activate,
              child: const Text("🎤 ACTIVATE JARVIS"),
            )
          ],
        ),
      ),
    );
  }
}
