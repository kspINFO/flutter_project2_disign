import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 1.5,
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  "images/colorsflow.jpeg",
                  fit: BoxFit.fill,
                ),
              ),
              const Positioned(
                top: 100,
                left: 185,
                child: Text(
                  "Login",
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              Positioned(
                top: 200,
                left: 75,
                child: Column(
                  children: [
                    Container(
                      width: 300,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(
                              15.0,
                            ),
                            child: Icon(
                              Icons.person,
                              color: Colors.grey.shade500,
                            ),
                          ),
                          Text(
                            "Enter a Username",
                            style: TextStyle(
                                color: Colors.grey.shade500,
                                fontWeight: FontWeight.bold),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 85, right: 10),
                            child: Icon(
                              Icons.check_circle,
                              color: Colors.green,
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 45,
                    ),
                    Container(
                      width: 300,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(
                              15.0,
                            ),
                            child: Icon(
                              Icons.lock_outline,
                              color: Colors.grey.shade500,
                            ),
                          ),
                          Text(
                            "Password",
                            style: TextStyle(
                                color: Colors.grey.shade500,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 95,
                    ),
                    Container(
                      height: 50,
                      width: 250,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.green),
                      child: const Center(
                        child: Text(
                          "Login",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 17),
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    const Text(
                      "Forget you password?",
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 65),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Container(
                      height: 1,
                      width: 140,
                      decoration: BoxDecoration(color: Colors.grey.shade500)),
                ),
                const Text(
                  " Or Connect With",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 25),
                  child: Container(
                      height: 1,
                      width: 140,
                      decoration: BoxDecoration(color: Colors.grey.shade500)),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          socialmedia(),
          const Text.rich(
            TextSpan(
              children: [
                TextSpan(text: "Dont hava a account?"),
                TextSpan(
                  text: "  Sign up",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 120, 28, 196)),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Padding socialmedia() {
    return Padding(
      padding: const EdgeInsets.only(
        top: 40,
        bottom: 50,
        left: 55,
        right: 55,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: 50,
            width: 170,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.lightBlue,
            ),
            child: const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20, right: 10),
                  child: Icon(
                    Icons.facebook,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
                Text(
                  "Facebook",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                )
              ],
            ),
          ),
          const Spacer(),
          Container(
            height: 50,
            width: 170,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.purple,
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 10),
                  child: Image.asset(
                    "images/Twitter.jpg",
                    height: 45,
                    width: 45,
                  ),
                ),
                const Text(
                  "Twetter",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
