import 'package:flutter/material.dart';

class AnimationScreen extends StatefulWidget {
  const AnimationScreen({super.key});

  @override
  State<AnimationScreen> createState() => _AnimationScreenState();
}

class _AnimationScreenState extends State<AnimationScreen> {
  double largura = 100;
  Color cor = Colors.blue;

  void animar() {
    setState(() {
      largura = largura == 100 ? 250 : 100;
      cor = cor == Colors.blue ? Colors.red : Colors.blue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AnimatedContainer"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              duration: const Duration(seconds: 1),
              curve: Curves.easeInOut,
              width: largura,
              height: 100,
              color: cor,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: animar,
              child: const Text("Animar"),
            ),
          ],
        ),
      ),
    );
  }
}