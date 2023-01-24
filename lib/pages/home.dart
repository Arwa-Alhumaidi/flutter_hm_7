import 'package:flutter/material.dart';
import 'package:hm_7/pages/login.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 237, 236, 227),
        body: SafeArea(
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 12, bottom: 50, top: 8),
                    child: Image.asset(
                      'assets/list.jpeg',
                      height: 32,
                      width: 32,
                    ),
                  ),
                ],
              ),
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      'Good things.',
                      style: TextStyle(fontSize: 40),
                    ),
                  )
                ],
              ),
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      'await.',
                      style: TextStyle(fontSize: 40),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 22, top: 30, bottom: 5),
                    child: Image.asset(
                      'assets/pp1.jpeg',
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 70,
                    width: 400,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromARGB(255, 237, 236, 227),
                          shape: const StadiumBorder(),
                          side: const BorderSide(
                            width: 1.0,
                            color: Color.fromARGB(255, 27, 65, 47),
                          )),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Login()),
                        );
                      },
                      child: const Text(
                        'Sign in or join',
                        style: TextStyle(
                          color: Color.fromARGB(255, 27, 65, 47),
                          fontSize: 18,
                        ),
                        textAlign: TextAlign.right,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 18),
                    child: Container(
                      height: 70,
                      width: 400,
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 27, 65, 47), borderRadius: BorderRadius.all(Radius.circular(50))),
                      child: const Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: Text(
                          'Order Now',
                          style: TextStyle(fontSize: 18, color: Color.fromARGB(255, 237, 236, 227)),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
