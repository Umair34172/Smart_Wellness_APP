import 'package:flutter/material.dart';
import '../data/mood_drinks.dart';
import '../data/mood_icons.dart';
import '../theme.dart';
import 'instruction_screen.dart';

class ResultScreen extends StatelessWidget {
  final Map<String, int> scores;

  const ResultScreen(this.scores, {super.key});

  // Get mood with highest score
  String getFinalMood() {
    return scores.entries.reduce((a, b) => a.value >= b.value ? a : b).key;
  }

  @override
  Widget build(BuildContext context) {
    final mood = getFinalMood();
    final drink = getDrinkForMood(mood);
    final icon = moodIcons[mood] ?? Icons.local_drink;
    final emoji = moodEmojis[mood] ?? "💧";

    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: AppTheme.mainGradient,
        ),
        child: Center(
          child: Card(
            elevation: 8,
            margin: const EdgeInsets.all(24),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Mood Icon
                  Icon(
                    icon,
                    size: 70,
                    color: AppTheme.primary,
                  ),
                  const SizedBox(height: 10),

                  // Mood Text with Emoji
                  Text(
                    "$emoji  $mood",
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 12),

                  // Subtitle
                  Text(
                    "Your current mood is analyzed as",
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 14,
                    ),
                  ),

                  const SizedBox(height: 20),

                  // Drink Title
                  const Text(
                    "Recommended Drink",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),

                  const SizedBox(height: 6),

                  // Drink Name
                  Text(
                    drink,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: AppTheme.primary,
                    ),
                  ),

                  const SizedBox(height: 30),

                  // Restart Button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton.icon(
                      icon: const Icon(Icons.refresh),
                      label: const Text("Restart"),
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (_) => const InstructionScreen(),
                          ),
                              (route) => false,
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
