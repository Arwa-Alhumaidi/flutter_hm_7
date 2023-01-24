import 'package:flutter/material.dart';
import 'package:hm_7/pages/home.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 247, 245, 228),
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(color: const Color.fromARGB(255, 27, 65, 47), width: 1),
                          ),
                          child: const Icon(
                            Icons.close,
                            size: 15,
                            color: Color.fromARGB(255, 27, 65, 47),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          'assets/pp2.png',
                          height: 340,
                          width: 340,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 430,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 15, left: 20),
                          child: Stack(
                            children: [
                              const Text(
                                'Custom Bowl',
                                style: TextStyle(
                                    fontSize: 25, color: Color.fromARGB(255, 27, 65, 47), fontWeight: FontWeight.w200),
                              ),
                              Positioned(
                                left: 350,
                                child: Image.asset(
                                  'assets/pp4.png',
                                  height: 30,
                                  width: 30,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 20, top: 10, bottom: 30),
                        child: Text(
                          "\$9.95 - 270 cal",
                          style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 27, 65, 47)),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 380,
                    child: Image.asset('assets/pp3.png'),
                  ),
                  SizedBox(
                    width: 380,
                    child: Image.asset('assets/pp3.png'),
                  ),
                  SizedBox(
                    width: 380,
                    child: Image.asset('assets/pp3.png'),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 750),
                  child: Container(
                    height: 180,
                    width: 210,
                    color: const Color.fromARGB(255, 247, 245, 228),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 30, left: 30, right: 15),
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
                            MaterialPageRoute(builder: (context) => const HomePage()),
                          );
                        },
                        child: const Text(
                          'Modify',
                          style: TextStyle(
                            color: Color.fromARGB(255, 27, 65, 47),
                            fontSize: 18,
                          ),
                          textAlign: TextAlign.right,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 750),
                  child: Container(
                    height: 180,
                    width: 210,
                    color: const Color.fromARGB(255, 247, 245, 228),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 30, left: 15, right: 30),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromARGB(255, 27, 65, 47),
                          shape: const StadiumBorder(),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const HomePage()),
                          );
                        },
                        child: const Text(
                          'Add to bag',
                          style: TextStyle(
                            color: Color.fromARGB(255, 247, 245, 228),
                            fontSize: 18,
                          ),
                          textAlign: TextAlign.right,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
