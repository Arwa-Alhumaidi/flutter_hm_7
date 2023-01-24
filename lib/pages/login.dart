import 'package:flutter/material.dart';
import 'package:hm_7/pages/menu.dart';

extension gg on BuildContext {
  void openPage(Widget page) {
    final navigator = Navigator.of(this);
    navigator.push(MaterialPageRoute(builder: (context) => page));
  }
}

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 237, 236, 227),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 92),
                  child: Container(
                    child: const Text(
                      'Sign in to sweetgreen',
                      style: TextStyle(fontSize: 35, color: Color.fromARGB(255, 27, 65, 47)),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 20, top: 65),
                ),
                Text("Don't have an account?", style: TextStyle(fontSize: 14, color: Color.fromARGB(255, 27, 65, 47))),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Container(
                    height: 47,
                    width: 110,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 237, 236, 227),
                        border: Border.all(
                          color: const Color.fromARGB(255, 27, 65, 47),
                          width: 1.0,
                        ),
                        borderRadius: const BorderRadius.all(Radius.circular(50))),
                    child: const Padding(
                      padding: EdgeInsets.only(top: 13),
                      child: Text(
                        'Join now',
                        style: TextStyle(fontSize: 14, color: Color.fromARGB(255, 27, 65, 47)),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  child: const Padding(
                    padding: EdgeInsets.only(top: 70, left: 20),
                    child: Text(
                      'Your email address',
                      style:
                          TextStyle(fontSize: 18, color: Color.fromARGB(255, 27, 65, 47), fontWeight: FontWeight.w200),
                    ),
                  ),
                ),
              ],
            ),
            const Divider(
              height: 20,
              thickness: 1,
              indent: 20,
              endIndent: 20,
              color: Colors.grey,
            ),
            Row(
              children: [
                SizedBox(
                  width: 430,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 70, left: 20),
                    child: Stack(
                      children: const [
                        Text(
                          'Password',
                          style: TextStyle(
                              fontSize: 18, color: Color.fromARGB(255, 27, 65, 47), fontWeight: FontWeight.w200),
                        ),
                        Positioned(
                            left: 350,
                            child: Text(
                              'SHOW',
                              style: TextStyle(fontSize: 12, color: Colors.black, fontWeight: FontWeight.w200),
                            ))
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const Divider(
              height: 20,
              thickness: 1,
              indent: 20,
              endIndent: 20,
              color: Colors.grey,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Container(
                    height: 55,
                    width: 400,
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 27, 65, 47), borderRadius: BorderRadius.all(Radius.circular(50))),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20),
                      // child: Inkwell(
                      //   onTap: ()
                      child: InkWell(
                        onTap: () {
                          context.openPage;
                          (const Menu());
                        },
                        child: const Text(
                          'Sign in',
                          style: TextStyle(fontSize: 18, color: Color.fromARGB(255, 237, 236, 227)),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 55),
                  child: Container(
                    child: const Text(
                      'Forgot password?',
                      style: TextStyle(
                        fontSize: 14,
                        color: Color.fromARGB(255, 27, 65, 47),
                        decoration: TextDecoration.underline,
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
