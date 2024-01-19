import 'package:flutter/material.dart';
import 'qlass2.dart';

Stories story = Stories();
void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('asset/background.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Destini(),
        ),
      ),
    ),
  );
}

class Destini extends StatefulWidget {
  const Destini({super.key});

  @override
  State<Destini> createState() => _DestiniState();
}

class _DestiniState extends State<Destini> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                story.getstory(),
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25.0,
                ),
              ),
            ),
          ),
          flex: 5,
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextButton(
              onPressed: () {
                check1();
              },
              child: Text(
                story.getq1(),
                style: TextStyle(color: Colors.white),
              ),
              style: TextButton.styleFrom(backgroundColor: Colors.red),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Visibility(
              visible: story.vis(),
              child: TextButton(
                onPressed: () {
                  check2();
                },
                child: Text(
                  story.getq2(),
                  style: TextStyle(color: Colors.white),
                ),
                style: TextButton.styleFrom(backgroundColor: Colors.blue),
              ),
            ),
          ),
        ),
      ],
    );
  }

  void check1() {
    setState(() {
      if (story.getq1() == 'I\'ll hop in. Thanks for the help!') {
        story.storynumber += 2;
      } else {
        if (story.getq1() == 'At least he\'s honest. I\'ll climb in.') {
          story.storynumber++;
        } else {
          if (story.getq1() ==
              'I love Elton John! Hand him the cassette tape.') {
            story.storynumber += 3;
          } else {
            story.storynumber = 0;
          }
        }
      }
    });
  }

  void check2() {
    setState(() {
      if (story.getq2() == 'Better ask him if he\'s a murderer first.') {
        story.storynumber++;
      } else {
        if (story.getq2() == 'Wait, I know how to change a tire.' ||
            story.getq2() ==
                'It\'s him or me! You take the knife and stab him.') {
          story.storynumber += 2;
        }
      }
    });
  }
}
