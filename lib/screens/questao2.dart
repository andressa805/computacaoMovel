import 'package:flutter/material.dart';

class AnimationScreen extends StatefulWidget {
  const AnimationScreen({super.key});

  @override
  State<AnimationScreen> createState() => _AnimationScreenState();
}

class _AnimationScreenState extends State<AnimationScreen> {
  double tamanho = 60;

  @override
  void initState() {
    super.initState();
    animar();
  }

  void animar() {
    Future.delayed(const Duration(milliseconds: 300), () {
      if (!mounted) return;

      setState(() {
        tamanho = tamanho == 60 ? 100 : 60;
      });

      animar(); // loop infinito
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("exercicio 2"),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
          width: tamanho,
          height: tamanho,
          alignment: Alignment.center,
          child: const Icon(
            Icons.favorite,
            color: Colors.purple,
            size: 50,
          ),
        ),
      ),
    );
  }
}