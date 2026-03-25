import 'package:flutter/material.dart';
import '../data/questions.dart';
import 'result_screen.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  late List<Question> questions;
  int index = 0;

  final Map<String, int> moodScore = {
    "Happy": 0,
    "Sad": 0,
    "Stressed": 0,
    "Weak": 0,
    "Lazy": 0,
    "Dehydrated": 0,
    "Energized": 0,
  };

  @override
  void initState() {
    super.initState();
    questions = getRandomQuestions(5);
  }

  void answer(String mood) {
    moodScore[mood] = moodScore[mood]! + 1;

    if (index < questions.length - 1) {
      setState(() => index++);
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (_) => ResultScreen(moodScore),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final q = questions[index];

    return Scaffold(
      appBar: AppBar(title: Text("Question ${index + 1}/5")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            // ✅ Progress Bar
            LinearProgressIndicator(
              value: (index + 1) / questions.length,
              minHeight: 8,
            ),
            const SizedBox(height: 20),

            Text(
              q.text,
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),

            ...q.options.entries.map(
                  (entry) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 6),
                child: ElevatedButton(
                  onPressed: () => answer(entry.value),
                  child: Text(entry.key),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
