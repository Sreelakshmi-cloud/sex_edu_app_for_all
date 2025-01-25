
// 
 
class LayOutQuestion {
  final int id;
  final String text;
  final List<LayOutOption> options;
  bool isLocked;
  LayOutOption? selectedWiidgetOption;
  LayOutOption? correctAnswer;
  // final int timeSeconds;

  LayOutQuestion({
    required this.text,
    required this.options,
    this.isLocked = false,
    this.selectedWiidgetOption,
    required this.id,
    required this.correctAnswer,
    //  required this.timeSeconds
  });

  LayOutQuestion copyWith() {
    return LayOutQuestion(
      id: id,
      text: text,
      options: options
          .map(
            (option) =>
                LayOutOption(text: option.text, isCorrect: option.isCorrect),
          )
          .toList(),
      isLocked: isLocked,
      selectedWiidgetOption: selectedWiidgetOption,
      correctAnswer: correctAnswer,
    );
  }
}

class LayOutOption {
  final String text;
  final bool isCorrect;

  const LayOutOption({
    required this.text,
    required this.isCorrect,
  });
}

final layOutQuestionsList = [
  LayOutQuestion(
    text: "What is the most effective way to prevent sexually transmitted infections (STIs)?",
    options: [
      const LayOutOption(text: "Using condoms consistently and correctly", isCorrect: true),
      const LayOutOption(text: "Relying on natural methods like withdrawal", isCorrect: false),
      const LayOutOption(text: "Having a monogamous relationship without discussing sexual health", isCorrect: false),
      const LayOutOption(text: "Ignoring the need for protection if you trust your partner", isCorrect: false),
    ],
    id: 0,
    correctAnswer:
        const LayOutOption(text: "Using condoms consistently and correctly", isCorrect: true),
  ),
  LayOutQuestion(
    text:
        "What is the purpose of birth control?",
    options: [
      const LayOutOption(text: "To prevent pregnancy ", isCorrect: true),
      const LayOutOption(text: "To make sexual activity more enjoyable", isCorrect: false),
      const LayOutOption(text: "To prevent sexually transmitted infections (STIs)", isCorrect: false),
      const LayOutOption(text: "To help with emotional issues", isCorrect: false),
    ],
    id: 1,
    correctAnswer: const LayOutOption(text: "To prevent pregnancy", isCorrect: true),
  ),

  LayOutQuestion(
    text:
        "What does it mean to give informed consent?",
    options: [
      const LayOutOption(text: "Giving clear, voluntary, and informed permission for an activity", isCorrect: true),
      const LayOutOption(text: "Saying “yes” without being sure", isCorrect: false),
      const LayOutOption(text: "Agreeing to something because you feel pressured", isCorrect: false),
      const LayOutOption(text: "Agreeing without talking about it first", isCorrect: false),
    ],
    id: 2,
    correctAnswer: const LayOutOption(text: "Giving clear, voluntary, and informed permission for an activity", isCorrect: true),
  ),

  LayOutQuestion(
    text:
        "What should you do if you feel uncomfortable during sexual activity?",
    options: [
      const LayOutOption(text: "Continue anyway, to avoid conflict", isCorrect: false),
      const LayOutOption(text: " Ignore your feelings and wait for it to pass", isCorrect: false),
      const LayOutOption(text: "Speak up and ask to stop or change the activity ", isCorrect: true),
      const LayOutOption(text: "Pretend you are comfortable", isCorrect: false),
    ],
    id: 3,
    correctAnswer:
        const LayOutOption(text: "Speak up and ask to stop or change the activity", isCorrect: true),
  ),
  // other 4
  LayOutQuestion(
    text:
        "What is the role of contraception in a relationship?",
    options: [
      const LayOutOption(text: "It only prevents pregnancy", isCorrect: false),
      const LayOutOption(text: "It helps one partner feel more comfortable", isCorrect: false),
      const LayOutOption(text: "It should not be used in committed relationships", isCorrect: false),
      const LayOutOption(text: "It  helps protect against sexually transmitted infections (STIs) and prevents pregnancy ", isCorrect: true),
    ],
    id: 4,
    correctAnswer: const LayOutOption(text: "It helps protect against sexually transmitted infections (STIs) and prevents pregnancy ", isCorrect: true),
  ),
  
];
