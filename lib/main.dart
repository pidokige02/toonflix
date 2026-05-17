import 'package:flutter/material.dart';
import 'package:toonflix/widgets/button.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFF181818),
        body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 80,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'Hey, Selena',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      Text(
                        'Welcome back',
                        style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 0.8),
                          fontSize: 18,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 120,
              ),
              Text(
                'Total balance',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.white.withValues(),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                '\$5 194 382',
                style: TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.w600,
                  color: Colors.white.withValues(),
                ),
              ),
              SizedBox(
                height:25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                children: [
                  Button(text: 'Transfer',
                  bgColor: Colors.amber,
                  textColor: Colors.black),
                  Button(text: 'Request',
                  bgColor: const Color(0xFF1F2123),
                  textColor: Colors.white),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
