class StateQuestion {
  final int id;
  final String text;
  final List<StateOption> options;
  bool isLocked;
  StateOption? selectedWiidgetOption;
  StateOption? correctAnswer;

  StateQuestion({
    required this.text,
    required this.options,
    this.isLocked = false,
    this.selectedWiidgetOption,
    required this.id,
    required this.correctAnswer,
  });
  StateQuestion copyWith() {
    return StateQuestion(
      id: id,
      text: text,
      options: options
          .map((option) =>
              StateOption(text: option.text, isCorrect: option.isCorrect))
          .toList(),
      isLocked: isLocked,
      selectedWiidgetOption: selectedWiidgetOption,
      correctAnswer: correctAnswer,
    );
  }
}

class StateOption {
  final String text;
  final bool isCorrect;

  const StateOption({
    required this.text,
    required this.isCorrect,
  });
}

final stateQuestionsList = [
  StateQuestion(
    text:
        "What is puberty?",
    options: [
      const StateOption(text: "A time when you stop growing", isCorrect: false),
      const StateOption(text: "A time when you stop feeling emotions", isCorrect: false),
      const StateOption(text: "A time when your body begins to change as you grow up", isCorrect: true),
      const StateOption(text: " A time when your body stays the same", isCorrect: false),
    ],
    id: 0,
    correctAnswer: const StateOption(text: "A time when your body begins to change as you grow up", isCorrect: true),
  ),
  StateQuestion(
    text:
        "What should you do if someone touches you in a way that makes you feel uncomfortable? ",
    options: [
      const StateOption(text: " Pretend it didn’t happen", isCorrect: false),
      const StateOption(text: "Tell the person to stop and talk to a trusted adult", isCorrect: true),
      const StateOption(text: "Say nothing and keep it a secret", isCorrect: false),
      const StateOption(text: "Just go along with it", isCorrect: false),
    ],
    id: 1,
    correctAnswer: const StateOption(text: "Tell the person to stop and talk to a trusted adult", isCorrect: true),
  ),
  StateQuestion(
    text:
        "What does it mean to respect someone's boundaries?",
    options: [
      const StateOption(text: "To always ask before touching or doing something with them", isCorrect: true),
      const StateOption(text: " To never listen to what they want", isCorrect: false),
      const StateOption(text: " To ignore their feelings", isCorrect: false),
      const StateOption(text: "To do whatever you want, as long as they don’t complain", isCorrect: false),
    ],
    id: 2,
    correctAnswer: const StateOption(text: "To always ask before touching or doing something with them", isCorrect: true),
  ),

  StateQuestion(
    text:
        "Why is it important to talk about your feelings with a trusted adult??",
    options: [
      const StateOption(text: "So they can help you understand your emotions and stay safe", isCorrect: true),
      const StateOption(text: " So they can make decisions for you", isCorrect: false),
      const StateOption(text: "So they can share your feelings with others", isCorrect: false),
      const StateOption(text: "So they can tell you what to do", isCorrect: false),
    ],
    id: 3,
    correctAnswer: const StateOption(text: "So they can help you understand your emotions and stay safe", isCorrect: true),
  ),
  // other 4
  StateQuestion(
    text:
        "What is consent?",
    options: [
      const StateOption(text: "Doing whatever someone asks you to do", isCorrect: false),
      const StateOption(text: " Agreeing to something because you feel pressured", isCorrect: false),
      const StateOption(text: "Ignoring how you feel about something", isCorrect: false),
      const StateOption(text: " Giving permission for something to happen", isCorrect: true),
    ],
    id: 4,
    correctAnswer: const StateOption(text: " Giving permission for something to happen", isCorrect: true),
  ),
  StateQuestion(
    text: "What can you do to protect yourself from sexually transmitted infections (STIs)?",
    options: [
      const StateOption(text: "Use protection like condoms during sexual activity", isCorrect: true),
      const StateOption(text: "Avoid talking about it", isCorrect: false),
      const StateOption(text: "Stay away from friends", isCorrect: false),
      const StateOption(text: " Keep it a secret", isCorrect: false),
    ],
    id: 5,
    correctAnswer: const StateOption(text: "Use protection like condoms during sexual activity", isCorrect: true),
  ),

  StateQuestion(
    text: "What is a healthy relationship based on?",
    options: [
      const StateOption(text: " Being in control of the other person", isCorrect: false),
      const StateOption(text: "Always agreeing on everything", isCorrect: false),
      const StateOption(text: "Not talking to each other", isCorrect: false),
      const StateOption(text: "Respect, trust, and good communication", isCorrect: true),
    ],
    id: 6,
    correctAnswer: const StateOption(text: "Respect, trust, and good communication", isCorrect: true),
  ),
  StateQuestion(
    text:
        "What should you do if you feel pressure to do something you don’t want to do?",
    options: [
      const StateOption(text: "Say “No” and leave the situation", isCorrect: true),
      const StateOption(text: " Ignore your feelings and do it", isCorrect: false),
      const StateOption(text: " Let the other person decide for you", isCorrect: false),
      const StateOption(text: "Pretend you’re okay with it", isCorrect: false),
    ],
    id: 7,
    correctAnswer: const StateOption(text: "Say “No” and leave the situation", isCorrect: true),
  ),

];
