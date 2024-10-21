import 'package:flutter/material.dart';
import 'dart:math';
import 'question_page.dart';
import 'story/Destiny.dart';

void main() {
  //runApp(MaterialApp(home: MyApp()));
  //runApp(MaterialApp(home: BilliardPage()));
  runApp( Destiny());
  // runApp(MaterialApp(
  //   debugShowCheckedModeBanner: false,
  //   home: QuestionPage(),
  // ));
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int dice1 = 0;
  int dice2 = 0;
  int dice3 = 0;
  int dice4 = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainSCreen(),
    );
  }
}

class MainSCreen extends StatefulWidget {
  const MainSCreen({super.key});

  @override
  State<MainSCreen> createState() => _MainSCreenState();
}

class _MainSCreenState extends State<MainSCreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Dices2(),
                      ));
                },
                child: Text("Dice 2"),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Dices4(),
                      ));
                },
                child: Text("Dice 4"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Dices2 extends StatefulWidget {
  const Dices2({super.key});

  @override
  State<Dices2> createState() => _Dices2State();
}

class _Dices2State extends State<Dices2> {
  int dice1 = 1;
  int dice2 = 1;

  List<int> findDuplicates(List<int> numbers) {
    List<int> duplicates = [];

    for (int i = 0; i < numbers.length; i++) {
      for (int j = i + 1; j < numbers.length; j++) {
        if (numbers[i] == numbers[j] && !duplicates.contains(numbers[i])) {
          duplicates.add(numbers[i]);
        }
      }
    }

    return duplicates;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Center(
          child: InkWell(
        onTap: () {
          setState(() {
            dice1 = Random().nextInt(5) + 1;
            dice2 = Random().nextInt(5) + 1;

            List<int> duplicates = findDuplicates([
              dice1,
              dice2,
            ]);

            if (duplicates.isNotEmpty) {
              print("duplicates number : ${duplicates.join(', ')}");
            } else {
              print("not duplicates");
            }
          });
        },
        child: Row(
          children: [
            Expanded(child: Image.asset('assets/$dice1.png')),
            Expanded(child: Image.asset('assets/$dice2.png')),
          ],
        ),
      )),
    ));
  }
}

class Dices4 extends StatefulWidget {
  const Dices4({super.key});

  @override
  State<Dices4> createState() => _Dices4State();
}

class _Dices4State extends State<Dices4> {
  int dice1 = 1;
  int dice2 = 1;
  int dice3 = 1;
  int dice4 = 1;

  List<int> findDuplicates(List<int> numbers) {
    List<int> duplicates = [];

    for (int i = 0; i < numbers.length; i++) {
      for (int j = i + 1; j < numbers.length; j++) {
        if (numbers[i] == numbers[j] && !duplicates.contains(numbers[i])) {
          duplicates.add(numbers[i]);
        }
      }
    }

    return duplicates;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: InkWell(
            onTap: () {
              setState(() {
                dice1 = Random().nextInt(5) + 1;
                dice2 = Random().nextInt(5) + 1;
                dice3 = Random().nextInt(5) + 1;
                dice4 = Random().nextInt(5) + 1;
                print("dic1_ =>$dice1");
                print("dic_2 =>$dice2");
                print("dic_3 => $dice3");
                print("dic_4 => $dice4");

                List<int> duplicates =
                    findDuplicates([dice1, dice2, dice3, dice4]);
                if (duplicates.isNotEmpty) {
                  print("duplicates number : ${duplicates.join(', ')}");
                } else {
                  print("not duplicates");
                }
              });
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Expanded(child: Image.asset('assets/$dice1.png')),
                    Expanded(child: Image.asset('assets/$dice2.png')),
                  ],
                ),
                Row(
                  children: [
                    Expanded(child: Image.asset('assets/$dice3.png')),
                    Expanded(child: Image.asset('assets/$dice4.png')),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
