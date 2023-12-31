import 'package:flutter/material.dart';
import 'package:shopit/pages/home_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();

    // Add a delay of 3 seconds before navigating to the home page
    Future.delayed(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => HomePage(), // Navigate to the home page
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(206, 173, 172, 172),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 200), // Add a SizedBox with a height of 20
            Padding(
              padding: const EdgeInsets.all(16.0), // Adjust the padding as needed
              child: Image.asset(
                'lib/images/image1.png', // Replace with the actual image path
                height: 150,
              ),
            ),
            const SizedBox(height: 20), // Add a SizedBox with a height of 20
            const Text(
              'Shopping Like Never Before!',
              style: TextStyle(
                textBaseline: TextBaseline.alphabetic,
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Color.fromARGB(255, 206, 206, 206),
                
              ),
              
            ),
           const SizedBox(height: 20),

           const Text(
              'Shop from the comfort of your home',
              style: TextStyle(
                
                fontSize: 20,
                color: Color.fromARGB(255, 206, 206, 206),
                
              ),
              
            ),
          ],
        ),
      ),
    );
  }
}
