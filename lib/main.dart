import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Random random = Random();
  int x = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Center(
              child: Text(
            'Lottery_App',
            style: TextStyle(fontFamily: 'Pacifico'),
          )),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  'Lottery winning number is 5',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.grey.shade500),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: x == 5 ? 600 : 300,
                width: 200,
                decoration: BoxDecoration(
                  color: x == 5
                      ? Colors.grey.withOpacity(.9)
                      : Colors.cyan.shade50,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: x == 5
                      ? Column(
                          children: [
                            Icon(Icons.done_all,
                                color: Colors.green.shade700, size: 35),
                            Text(
                              'Congratulations, You won!! your lottery number is match with winning number $x',
                              textAlign: TextAlign.center,
                            ),
                          ],
                        )
                      : Column(
                          children: [
                            Icon(Icons.error, color: Colors.red, size: 35),
                            Text(
                              'Sorry, Better luck try next time\nYour lottery number is $x',
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            x = random.nextInt(6);
            print(x);
            setState(() {});
          },
          child: Icon(Icons.refresh),
        ),
      ),
    );
  }
}
