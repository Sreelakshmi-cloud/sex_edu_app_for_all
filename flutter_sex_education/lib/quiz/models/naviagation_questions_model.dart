class NavigateQuestion {
  final int id;
  final String text;
  final List<NavigationsOption> options;
  bool isLocked;
  NavigationsOption? selectedWiidgetOption;
  NavigationsOption? correctAnswer;

  NavigateQuestion({
    required this.text,
    required this.options,
    this.isLocked = false,
    this.selectedWiidgetOption,
    required this.id,
    required this.correctAnswer,
  });

  NavigateQuestion copyWith() {
    return NavigateQuestion(
      id: id,
      text: text,
      options: options
          .map((option) =>
              NavigationsOption(text: option.text, isCorrect: option.isCorrect))
          .toList(),
      isLocked: isLocked,
      selectedWiidgetOption: selectedWiidgetOption,
      correctAnswer: correctAnswer,
    );
  }
}

class NavigationsOption {
  final String text;
  final bool isCorrect;

  const NavigationsOption({
    required this.text,
    required this.isCorrect,
  });
}

final navigateQuestionsList = [
  NavigateQuestion(
    text:
        "What is consent?",
    options: [
      const NavigationsOption(text: " Agreeing to something because someone pressures you", isCorrect: false),
      const NavigationsOption(text: "Saying “yes” without thinking", isCorrect: false),
      const NavigationsOption(text: "Giving permission for something to happen, freely and enthusiastically", isCorrect: true),
      const NavigationsOption(text: " Only agreeing to something if everyone else agrees", isCorrect: false),
    ],
    id: 0,
    correctAnswer: const NavigationsOption(text: "Giving permission for something to happen, freely and enthusiastically", isCorrect: true),
  ),
  NavigateQuestion(
    text:
        " What can you do to prevent sexually transmitted infections (STIs)?",
    options: [
      const NavigationsOption(text: "Avoid talking about STIs", isCorrect: false),
      const NavigationsOption(text: "Use condoms or other forms of protection during sexual activity", isCorrect: true),
      const NavigationsOption(
          text: " Trust that your partner is STI-free without asking", isCorrect: false),
      const NavigationsOption(text: " Ignore regular check-ups and testing", isCorrect: false),
    ],
    id: 1,
    correctAnswer:
        const NavigationsOption(text: "Use condoms or other forms of protection during sexual activity", isCorrect: true),
  ),
  NavigateQuestion(
    text:
        "What is the most effective way to prevent pregnancy?",
    options: [
      const NavigationsOption(text: "Using birth control or condoms correctly", isCorrect: true),
      const NavigationsOption(text: "Withdrawal method (pulling out)", isCorrect: false),
      const NavigationsOption(text: "Only relying on natural methods", isCorrect: false),
      const NavigationsOption(text: "Not having sex", isCorrect: false),
    ],
    id: 2,
    correctAnswer: const NavigationsOption(text: "Using birth control or condoms correctly", isCorrect: true),
  ),

  NavigateQuestion(
    text:
        "What is the purpose of contraception?",
    options: [
      const NavigationsOption(text: "To prevent pregnancy and protect against STIs", isCorrect: true),
      const NavigationsOption(text: "To make sex more fun", isCorrect: false),
      const NavigationsOption(text: " To make you feel better after sex", isCorrect: false),
      const NavigationsOption(text: "To stop you from feeling nervous", isCorrect: false),
    ],
    id: 3,
    correctAnswer:
        const NavigationsOption(text: "To prevent pregnancy and protect against STIs", isCorrect: true),
  ),
  // other 4
  NavigateQuestion(
    text:
      "Why is it important to communicate openly with your partner about sexual health?"
,
    options: [
      const NavigationsOption(text: "So both of you can stay informed about any risks and make safe choices", isCorrect: false),
      const NavigationsOption(text: "So you don’t have to talk about anything else", isCorrect: false),
      const NavigationsOption(text: "So one person can control the relationship", isCorrect: false),
      const NavigationsOption(text: "So you can avoid talking about emotions", isCorrect: true),
    ],
    id: 4,
    correctAnswer: const NavigationsOption(
      text: "So you can avoid talking about emotions",
      isCorrect: true,
    ),
  ),
  NavigateQuestion(
    text:
        "What does it mean to practice safe sex?",
    options: [
      const NavigationsOption(
          text: "Always use protection like condoms to prevent STIs and pregnancy", isCorrect: true),
      const NavigationsOption(text: "Not discussing sexual health with your partner", isCorrect: false),
      const NavigationsOption(
          text: "Only having sex with someone you trust", isCorrect: false),
      const NavigationsOption(
          text: "Doing whatever feels good without worrying about safety", isCorrect: false),
    ],
    id: 5,
    correctAnswer: const NavigationsOption(
        text: "Always use protection like condoms to prevent STIs and pregnancy", isCorrect: true),
  ),

 
];
