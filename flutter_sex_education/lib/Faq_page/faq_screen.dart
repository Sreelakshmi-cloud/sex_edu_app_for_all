import 'package:flutter/material.dart';

class FAQScreen extends StatelessWidget {
  final List<Map<String, String>> faqs = [
    {
      "question": "What is sex education?",
      "answer": "Sex education provides knowledge about human sexuality, reproduction, consent, and relationships."
    },
    {
      "question": "Why is sex education important?",
      "answer": "It helps individuals make informed decisions, promotes healthy relationships, and prevents misconceptions about sex and sexuality."
    },
    {
      "question": "What is consent?",
      "answer": "Consent means agreeing to engage in a specific activity freely and enthusiastically without any pressure or manipulation."
    },
    {
      "question": "How can I talk to my child about sex education?",
      "answer": "Use open and honest communication, choose age-appropriate language, and create a safe space for questions."
    },
    {
      "question": "What are sexually transmitted infections (STIs)?",
      "answer": "STIs are infections spread through sexual contact, such as HIV, chlamydia, gonorrhea, and syphilis."
    },
    {
      "question": "How can I prevent STIs?",
      "answer": "Using condoms, regular health check-ups, and limiting the number of sexual partners can reduce the risk of STIs."
    },
    {
      "question": "What are the types of contraception available?",
      "answer": "Common methods include condoms, birth control pills, IUDs, implants, and emergency contraception."
    },
    {
      "question": "What is puberty?",
      "answer": "Puberty is the stage of physical and emotional changes where a child’s body matures into an adult body capable of reproduction."
    },
    {
      "question": "What changes occur during puberty?",
      "answer": "Changes include growth spurts, development of reproductive organs, changes in voice, and the appearance of body hair."
    },
    {
      "question": "What is menstruation?",
      "answer": "Menstruation is the monthly shedding of the uterine lining in people with a uterus, commonly known as a period."
    },
    {
      "question": "Is masturbation normal?",
      "answer": "Yes, masturbation is a normal and natural way to explore one’s body and sexuality."
    },
    {
      "question": "What is the difference between gender and sex?",
      "answer": "Sex refers to biological attributes, while gender is a social construct related to roles, behaviors, and identities."
    },
    {
      "question": "What is sexual orientation?",
      "answer": "Sexual orientation describes an individual’s physical, emotional, or romantic attraction to others, such as heterosexual, homosexual, or bisexual."
    },
    {
      "question": "What is healthy communication in a relationship?",
      "answer": "Healthy communication involves mutual respect, honesty, active listening, and the ability to express feelings and boundaries."
    },
    {
      "question": "What is the role of consent in a relationship?",
      "answer": "Consent ensures that all activities in a relationship are mutual, respectful, and agreed upon by both parties."
    },
    {
      "question": "What is sexual harassment?",
      "answer": "Sexual harassment includes unwanted sexual advances, comments, or actions that make someone uncomfortable or unsafe."
    },
    {
      "question": "What is safe sex?",
      "answer": "Safe sex practices include using protection like condoms, getting tested for STIs, and maintaining open communication with partners."
    },
    {
      "question": "What should I do if I experience sexual violence?",
      "answer": "Seek immediate help from trusted individuals, contact local authorities, and consider reaching out to a support organization or counselor."
    },
    {
      "question": "How can I support someone who has experienced sexual violence?",
      "answer": "Listen without judgment, validate their feelings, offer support, and encourage them to seek professional help if needed."
    },
    {
      "question": "What resources are available for sex education?",
      "answer": "Reliable resources include healthcare providers, educational websites, books, and community workshops on sex education."
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sex Education FAQ'),
      ),
      body: ListView.builder(
        itemCount: faqs.length,
        itemBuilder: (context, index) {
          return FAQTile(
            question: faqs[index]["question"]!,
            answer: faqs[index]["answer"]!,
          );
        },
      ),
    );
  }
}

class FAQTile extends StatefulWidget {
  final String question;
  final String answer;

  FAQTile({required this.question, required this.answer});

  @override
  _FAQTileState createState() => _FAQTileState();
}

class _FAQTileState extends State<FAQTile> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: ExpansionTile(
        title: Text(
          widget.question,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(widget.answer),
          ),
        ],
        initiallyExpanded: _isExpanded,
        onExpansionChanged: (expanded) {
          setState(() {
            _isExpanded = expanded;
          });
        },
      ),
    );
  }
}