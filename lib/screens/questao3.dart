import 'package:flutter/material.dart';

class AnimationScreen extends StatefulWidget {
  const AnimationScreen({super.key});

  @override
  State<AnimationScreen> createState() => _AnimationScreenState();
}

class _AnimationScreenState extends State<AnimationScreen> {
  double opacidade = 1.0;

  void animar() async {
    // some
    setState(() {
      opacidade = 0.0;
    });

    // espera terminar a animação
    await Future.delayed(const Duration(seconds: 1));

    // volta
    setState(() {
      opacidade = 1.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Exercicio 3"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedOpacity(
              opacity: opacidade,
              duration: const Duration(seconds: 1),
              child: const Text(
                "aaaaaaaaaaaaaaaaa",
                style: TextStyle(fontSize: 24),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: animar,
              child: const Text("Mostrar / Esconder"),
            ),
          ],
        ),
      ),
    );
  }
}