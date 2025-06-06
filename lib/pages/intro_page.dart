import 'package:flutter/material.dart';
import '../pages/home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // logo
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Image.asset('lib/images/logo.webp',
              height: 240,  
                      ),
            ),
        
            const SizedBox(height: 48),
        
            // title
            Text(
              'Just do it',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
        
            const SizedBox(height: 24),
            
            // sub title
            Text(
              'Brand new sneakers and custom kicks made with love',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
              textAlign: TextAlign.center,
            ),
        
            const SizedBox(height: 48),

            // start new button
            GestureDetector(
              onTap: () => Navigator.push(
                context, MaterialPageRoute(
                  builder: (context) => HomePage()
                )
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: const EdgeInsets.all(25),
                child: Center(
                  child: const Text(
                    'Shop Now',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                )
              ),
            ),
          ],
        ),
      )
    );
  }
}