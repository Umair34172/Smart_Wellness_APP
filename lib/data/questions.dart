import 'dart:math';

class Question {
  final String text;
  final Map<String, String> options; // option -> mood
  Question(this.text, this.options);
}

final List<Question> allQuestions = [

  // 1–5
  Question("How do you feel right now?", {
    "Calm": "Happy",
    "Happy": "Happy",
    "Tired": "Weak",
    "Stressed": "Stressed",
  }),
  Question("Your energy level?", {
    "High": "Energized",
    "Medium": "Happy",
    "Low": "Weak",
    "Zero": "Lazy",
  }),
  Question("What do you need most?", {
    "Relax": "Stressed",
    "Focus": "Lazy",
    "Refresh": "Dehydrated",
    "Sleep": "Weak",
  }),
  Question("Your mind feels…", {
    "Clear": "Happy",
    "Busy": "Stressed",
    "Confused": "Sad",
    "Heavy": "Stressed",
  }),
  Question("Current vibe?", {
    "Chill": "Happy",
    "Excited": "Energized",
    "Lazy": "Lazy",
    "Anxious": "Stressed",
  }),

  // 6–10
  Question("How was your day?", {
    "Great": "Happy",
    "Okay": "Happy",
    "Long": "Weak",
    "Bad": "Sad",
  }),
  Question("Stress level?", {
    "None": "Happy",
    "Mild": "Stressed",
    "High": "Stressed",
    "Extreme": "Stressed",
  }),
  Question("Your body feels…", {
    "Fresh": "Energized",
    "Normal": "Happy",
    "Weak": "Weak",
    "Exhausted": "Weak",
  }),
  Question("What sounds good now?", {
    "Rest": "Weak",
    "Fun": "Happy",
    "Silence": "Sad",
    "Motivation": "Lazy",
  }),
  Question("Mood color?", {
    "Yellow": "Happy",
    "Blue": "Sad",
    "Grey": "Sad",
    "Green": "Happy",
  }),

  // 11–15
  Question("Appetite right now?", {
    "Hungry": "Energized",
    "Normal": "Happy",
    "Low": "Weak",
    "None": "Sad",
  }),
  Question("How focused are you?", {
    "Very": "Happy",
    "Somewhat": "Lazy",
    "Little": "Lazy",
    "Not at all": "Sad",
  }),
  Question("Emotion check?", {
    "Happy": "Happy",
    "Calm": "Happy",
    "Sad": "Sad",
    "Angry": "Stressed",
  }),
  Question("Social mood?", {
    "Talkative": "Happy",
    "Friendly": "Happy",
    "Quiet": "Sad",
    "Avoiding": "Sad",
  }),
  Question("Brain speed?", {
    "Fast": "Energized",
    "Normal": "Happy",
    "Slow": "Lazy",
    "Frozen": "Sad",
  }),

  // 16–20
  Question("How motivated are you?", {
    "Super": "Energized",
    "Okay": "Happy",
    "Low": "Lazy",
    "None": "Sad",
  }),
  Question("Sleep quality last night?", {
    "Great": "Energized",
    "Fine": "Happy",
    "Poor": "Weak",
    "None": "Weak",
  }),
  Question("Current craving?", {
    "Sweet": "Happy",
    "Fresh": "Dehydrated",
    "Cold": "Dehydrated",
    "Nothing": "Sad",
  }),
  Question("How relaxed are you?", {
    "Fully": "Happy",
    "Little": "Stressed",
    "Barely": "Stressed",
    "Not at all": "Stressed",
  }),
  Question("Mood type?", {
    "Positive": "Happy",
    "Neutral": "Happy",
    "Low": "Sad",
    "Negative": "Sad",
  }),

  // 21–25
  Question("Your patience level?", {
    "High": "Happy",
    "Medium": "Happy",
    "Low": "Stressed",
    "Zero": "Stressed",
  }),
  Question("What do you need now?", {
    "Energy": "Energized",
    "Calm": "Stressed",
    "Focus": "Lazy",
    "Comfort": "Sad",
  }),
  Question("How alert are you?", {
    "Sharp": "Energized",
    "Normal": "Happy",
    "Dull": "Lazy",
    "Sleepy": "Weak",
  }),
  Question("Emotional state?", {
    "Balanced": "Happy",
    "Overthinking": "Stressed",
    "Down": "Sad",
    "Irritated": "Stressed",
  }),
  Question("Current pressure?", {
    "None": "Happy",
    "Little": "Happy",
    "A lot": "Stressed",
    "Too much": "Stressed",
  }),

  // 26–30
  Question("Your mood today is…", {
    "Light": "Happy",
    "Stable": "Happy",
    "Low": "Sad",
    "Heavy": "Stressed",
  }),
  Question("Mental clarity?", {
    "Clear": "Happy",
    "Okay": "Happy",
    "Foggy": "Lazy",
    "Lost": "Sad",
  }),
  Question("Physical feeling?", {
    "Active": "Energized",
    "Normal": "Happy",
    "Tired": "Weak",
    "Drained": "Weak",
  }),
  Question("Emotional energy?", {
    "High": "Energized",
    "Medium": "Happy",
    "Low": "Sad",
    "Empty": "Sad",
  }),
  Question("Inner feeling?", {
    "Peaceful": "Happy",
    "Neutral": "Happy",
    "Restless": "Stressed",
    "Upset": "Sad",
  }),

  // 31–35
  Question("How calm are you?", {
    "Very": "Happy",
    "Somewhat": "Happy",
    "Slightly": "Stressed",
    "Not at all": "Stressed",
  }),
  Question("Mood direction?", {
    "Rising": "Happy",
    "Stable": "Happy",
    "Falling": "Sad",
    "Crashed": "Sad",
  }),
  Question("Stress trigger now?", {
    "Work": "Stressed",
    "Studies": "Stressed",
    "People": "Stressed",
    "Nothing": "Happy",
  }),
  Question("Body temperature preference?", {
    "Cold": "Dehydrated",
    "Cool": "Happy",
    "Normal": "Happy",
    "Warm": "Weak",
  }),
  Question("Feeling inside?", {
    "Light": "Happy",
    "Balanced": "Happy",
    "Heavy": "Stressed",
    "Empty": "Sad",
  }),

  // 36–40
  Question("Reaction speed?", {
    "Fast": "Energized",
    "Normal": "Happy",
    "Slow": "Lazy",
    "Very slow": "Weak",
  }),
  Question("Emotional control?", {
    "Strong": "Happy",
    "Okay": "Happy",
    "Weak": "Sad",
    "Lost": "Stressed",
  }),
  Question("Current state?", {
    "Fresh": "Energized",
    "Calm": "Happy",
    "Tired": "Weak",
    "Burnt out": "Stressed",
  }),
  Question("How social today?", {
    "Very": "Happy",
    "Normal": "Happy",
    "Low": "Sad",
    "None": "Sad",
  }),
  Question("Overall mood?", {
    "Positive": "Happy",
    "Balanced": "Happy",
    "Low": "Sad",
    "Negative": "Sad",
  }),

  // 41–45
  Question("What helps you now?", {
    "Energy": "Energized",
    "Calm": "Stressed",
    "Focus": "Lazy",
    "Comfort": "Sad",
  }),
  Question("Brain noise level?", {
    "Silent": "Happy",
    "Low": "Happy",
    "Loud": "Stressed",
    "Overloaded": "Stressed",
  }),
  Question("Physical comfort?", {
    "Good": "Happy",
    "Okay": "Happy",
    "Uncomfortable": "Weak",
    "Pain": "Weak",
  }),
  Question("Mental pressure?", {
    "None": "Happy",
    "Mild": "Happy",
    "High": "Stressed",
    "Extreme": "Stressed",
  }),
  Question("Current need?", {
    "Boost": "Energized",
    "Relax": "Stressed",
    "Refresh": "Dehydrated",
    "Rest": "Weak",
  }),

  // 46–50
  Question("Mood stability?", {
    "Stable": "Happy",
    "Slight": "Happy",
    "Unstable": "Sad",
    "Very unstable": "Sad",
  }),
  Question("Focus span?", {
    "Long": "Happy",
    "Medium": "Happy",
    "Short": "Lazy",
    "None": "Sad",
  }),
  Question("Inner balance?", {
    "Balanced": "Happy",
    "Slight": "Happy",
    "Off": "Sad",
    "Lost": "Sad",
  }),
  Question("Body readiness?", {
    "Active": "Energized",
    "Normal": "Happy",
    "Weak": "Weak",
    "Done": "Weak",
  }),
  Question("Emotional weight?", {
    "Light": "Happy",
    "Medium": "Happy",
    "Heavy": "Stressed",
    "Too heavy": "Sad",
  }),
];

List<Question> getRandomQuestions(int count) {
  final list = List<Question>.from(allQuestions)..shuffle(Random());
  return list.take(count).toList();
}
