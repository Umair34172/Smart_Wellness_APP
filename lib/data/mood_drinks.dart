import 'dart:math';

/// MENU-BASED DRINKS (FROM YOUR IMAGE)
final Map<String, List<String>> moodDrinkMenu = {
  "Energized": [
    "Coffee and Cocoa",
    "Lemon, Pink Salt & Honey",
  ],

  "Lazy": [
    "Apple and Cinnamon",
    "Mint and Lemon",
  ],

  "Stressed": [
    "Mint, Honey & Lemon",
    "Lavender Tea",
  ],

  "Sad": [
    "Lavender Tea",
    "Mint, Honey & Lemon",
  ],

  "Dehydrated": [
    "Cucumber, Mint & Lemon",
    "Pink Lemonade",
  ],

  "Weak": [
    "Ginger, Honey & Lemon",
    "Orange and Turmeric",
  ],

  "Happy": [
    "Mint and Lemon",
    "Pink Lemonade",
    "Apple and Cinnamon",
  ],
};

/// Memory to avoid repetition
final Map<String, List<String>> _usedDrinks = {};

/// Get non-repeating drink
String getDrinkForMood(String mood) {
  final drinks = moodDrinkMenu[mood];

  if (drinks == null || drinks.isEmpty) {
    return "Hydration Drink";
  }

  _usedDrinks.putIfAbsent(mood, () => []);

  // Reset if all drinks are used
  if (_usedDrinks[mood]!.length == drinks.length) {
    _usedDrinks[mood]!.clear();
  }

  // Available drinks
  final available = drinks
      .where((drink) => !_usedDrinks[mood]!.contains(drink))
      .toList();

  final selected = available[Random().nextInt(available.length)];
  _usedDrinks[mood]!.add(selected);

  return selected;
}
