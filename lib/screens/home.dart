import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int i = 0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: double.infinity,
          width:double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(1000)
                ),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(1000),
                    child: Image.asset("assets/images/handsome.jpg", fit: BoxFit.cover,)),
              ),
              const SizedBox(height: 11,),
              const Text("John Doe",
              style: TextStyle(
                fontSize: 27,
                fontWeight: FontWeight.w900,
              ),
              ),
              const Text("Current CGPA: 3.428",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: Colors.redAccent
              ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

