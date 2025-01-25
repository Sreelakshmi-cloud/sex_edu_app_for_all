class WidgetQuestion {
  final int id;
  final String text;
  final List<WiidgetOption> options;
  bool isLocked;
  WiidgetOption? selectedWiidgetOption;
  WiidgetOption correctAnswer;

  WidgetQuestion({
    required this.text,
    required this.options,
    this.isLocked = false,
    this.selectedWiidgetOption,
    required this.id,
    required this.correctAnswer,
  });

  WidgetQuestion copyWith() {
    return WidgetQuestion(
      id: id,
      text: text,
      options: options
          .map((option) =>
              WiidgetOption(text: option.text, isCorrect: option.isCorrect))
          .toList(),
      isLocked: isLocked,
      selectedWiidgetOption: selectedWiidgetOption,
      correctAnswer: correctAnswer,
    );
  }
}

class WiidgetOption {
  final String? text;
  final bool? isCorrect;

  const WiidgetOption({
    this.text,
    this.isCorrect,
  });
}

final widgetQuestionsList = [
  WidgetQuestion(
    text:
        "What should you do if someone touches you in a way that makes you feel uncomfortable?",
    options: [
      const WiidgetOption(text: "Tell the person to stop and talk to a trusted adult", isCorrect: true),
      const WiidgetOption(text: "Smile and say thank you", isCorrect: false),
      const WiidgetOption(text: " Ignore how you feel", isCorrect: false),
      const WiidgetOption(text: " Say nothing and keep playing", isCorrect: false),
    ],
    id: 0,
    correctAnswer: const WiidgetOption(text: "Tell the person to stop and talk to a trusted adult", isCorrect: true),
  ),
  WidgetQuestion(
      text:
          "What is your private body?",
      options: [
        const WiidgetOption(text: "Your arms and legs", isCorrect: false),
        const WiidgetOption(text: "Parts of your body that are covered by a swimsuit", isCorrect: true),
        const WiidgetOption(text: "Your face and hands", isCorrect: false),
        const WiidgetOption(text: " Your shoes and socks", isCorrect: false),
      ],
      id: 1,
      correctAnswer: const WiidgetOption(text: "Parts of your body that are covered by a swimsuit", isCorrect: true)),
  WidgetQuestion(
      text:
          "How can you show respect for someone else's body?",
      options: [
        const WiidgetOption(text: "So the adult can ignore it", isCorrect: false),
        const WiidgetOption(text: "So the adult can laugh about it", isCorrect: false),
        const WiidgetOption(text: "So the adult can tell everyone", isCorrect: false),
        const WiidgetOption(text: "So the adult can help keep you safe", isCorrect: true),
      ],
      id: 2,
      correctAnswer:
          const WiidgetOption(text: "CircleAvatar", isCorrect: true)),
  WidgetQuestion(
      text:
          "What is a good way to keep your body safe?",
      options: [
        const WiidgetOption(text: "Play all day without resting", isCorrect: false),
        const WiidgetOption(text: "Never talk to anyone", isCorrect: false),
        const WiidgetOption(text: "Listen to your body and tell an adult if something feels wrong", isCorrect: true),
        const WiidgetOption(text: " Never let anyone touch you", isCorrect: false),
      ],
      id: 3,
      correctAnswer: const WiidgetOption(text: "IconButton", isCorrect: true)),
  WidgetQuestion(
      text:
          " Why is it important to respect other people's personal space?",
      options: [
        const WiidgetOption(text: "To make them feel uncomfortable", isCorrect: false),
        const WiidgetOption(text: "To show them who's in charge", isCorrect: false),
        const WiidgetOption(text: "To make them follow your rules", isCorrect: false),
        const WiidgetOption(text: "To make them feel comfortable and safe", isCorrect: true),
      ],
      id: 4,
      correctAnswer: const WiidgetOption(text: "GridView", isCorrect: true)),
  WidgetQuestion(
      text:
          "What should you do if someone asks you to do something you don’t want to do?",
      options: [
        const WiidgetOption(text: " Say “No” and walk away", isCorrect: true),
        const WiidgetOption(text: "Do it anyway to make them happy", isCorrect: false),
        const WiidgetOption(text: "Ask your friend what to do", isCorrect: false),
        const WiidgetOption(text: "Ignore how you feel", isCorrect: false),
      ],
      id: 5,
      correctAnswer:
          const WiidgetOption(text: " Say No and walk away", isCorrect: true)),
  WidgetQuestion(
      text:
          " What should you do if someone touches you in a way that makes you feel uncomfortable?",
      options: [
        const WiidgetOption(text: " Tell a trusted adult", isCorrect: true),
        const WiidgetOption(text: "Stay quiet", isCorrect: false),
        const WiidgetOption(text: "Tell the person it’s okay", isCorrect: false),
        const WiidgetOption(text: "Hug the person back", isCorrect: false),
      ],
      id: 6,
      correctAnswer: const WiidgetOption(text: "Tell a trusted adult", isCorrect: true)),
 
 
];
