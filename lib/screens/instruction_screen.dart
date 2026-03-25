import 'package:flutter/material.dart';
import 'question_screen.dart';

class InstructionScreen extends StatelessWidget {
  const InstructionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Instructions")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Text(
              "Answer 5 simple questions.\nWe will analyze your mood and suggest a drink.",
              style: TextStyle(fontSize: 18),
            ),
            const Spacer(),
            ElevatedButton(
              child: const Text("Start"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const QuestionScreen()),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
