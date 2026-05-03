import 'package:flutter/material.dart';

class HUDHome extends StatelessWidget {
  const HUDHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              "JARVIS ONLINE",
              style: TextStyle(
                color: Colors.cyanAccent,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Text(
              "SYSTEM READY",
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
