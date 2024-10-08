import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: QuizApp(),
    );
  }
}

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});

  @override
  State createState() => _QuizAppState();
}

class _QuizAppState extends State {
  List<Map> allQuestions = [
    {
      "question": "Who is the founder of microsoft?",
      "options": ["Steve jobs", "Bill Gates", "lary page", "Elon musk"],
      "correctanswers": 1
    },
    {
      "question": "Who is the founder of Google?",
      "options": ["Steve jobs", "Bill Gates", "lary page", "Elon musk"],
      "correctanswers": 2
    },
    {
      "question": "Who is the founder of spaceX?",
      "options": ["Steve jobs", "Bill Gates", "lary page", "Elon musk"],
      "correctanswers": 3
    },
    {
      "question": "Who is the founder of Apple?",
      "options": ["Steve jobs", "Bill Gates", "lary page", "Elon musk"],
      "correctanswers": 0
    },
    {
      "question": "Who is the founder of Meta?",
      "options": ["Steve jobs", "Bill Gates", "lary page", "Mark zuckerberg"],
      "correctanswers": 3
    },
  ];
  int currentquestionindex = 0;
  int selectedanswerindex = -1;
  int score = 0;

  WidgetStateProperty<Color?> checkAnswer(int answerindex) {
    if (selectedanswerindex != -1) {
      if (answerindex == allQuestions[currentquestionindex]["correctanswers"]) {
        return const WidgetStatePropertyAll(Colors.green);
      } else if (selectedanswerindex == answerindex) {
        return const WidgetStatePropertyAll(Colors.red);
      } else {
        return const WidgetStatePropertyAll(null);
      }
    } else {
      return const WidgetStatePropertyAll(null);
    }
  }

  bool questionpage = true;

  @override
  Widget build(BuildContext context) {
    return isquestionscreen();
  }

  Scaffold isquestionscreen() {
    if (questionpage == true) {
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Quiz App",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w900,
              color: Colors.blue,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 130,
                ),
                Text(
                  "Question : ${currentquestionindex + 1}/${allQuestions.length}",
                  style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              width: 380,
              height: 50,
              child: Text(
                allQuestions[currentquestionindex]["question"],
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  color: Colors.purple,
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              height: 50,
              width: 350,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: checkAnswer(0),
                ),
                onPressed: () {
                  if (selectedanswerindex == -1) {
                    selectedanswerindex = 0;
                    setState(() {});
                  }
                },
                child: Text(
                  "A. ${allQuestions[currentquestionindex]['options'][0]}",
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              height: 50,
              width: 350,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: checkAnswer(1),
                ),
                onPressed: () {
                  if (selectedanswerindex == -1) {
                    selectedanswerindex = 1;
                    setState(() {});
                  }
                },
                child: Text(
                  "B. ${allQuestions[currentquestionindex]['options'][1]}",
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              height: 50,
              width: 350,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: checkAnswer(2),
                ),
                onPressed: () {
                  if (selectedanswerindex == -1) {
                    selectedanswerindex = 2;
                    setState(() {});
                  }
                },
                child: Text(
                  "C. ${allQuestions[currentquestionindex]['options'][2]}",
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              height: 50,
              width: 350,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: checkAnswer(3),
                ),
                onPressed: () {
                  if (selectedanswerindex == -1) {
                    selectedanswerindex = 3;
                    setState(() {});
                  }
                },
                child: Text(
                  "D. ${allQuestions[currentquestionindex]['options'][3]}",
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            if (selectedanswerindex ==
                allQuestions[currentquestionindex]["correctanswers"]) {
              score++;
            }

            if (currentquestionindex < allQuestions.length - 1) {
              currentquestionindex++;
            } else {
              questionpage = false;
            }
            selectedanswerindex = -1;
            setState(() {});
          },
          backgroundColor: Colors.blue,
          child: const Icon(
            Icons.forward,
            color: Colors.white,
          ),
        ),
      );
    } else {
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Quiz Result",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w900,
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                ""https://www.listbark.com/wp-content/uploads/2019/11/Congratulations.png, height: 100,"",
               
              ),
              const SizedBox(height: 30),
              const Text(
                "Congratulations✌",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                  color: Colors.orange,
                ),
              ),
              const SizedBox(height: 30),
              Text(
                "Your Score: $score",
                style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              )
            ],
          ),
        ),
      );
    }
  }
}