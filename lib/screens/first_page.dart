import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: const Text(
          'Discover \nCombats', 
          style: TextStyle(
            color: Colors.white,
          ),
          ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          const Text('   Trending this week',
          style: TextStyle(color: Colors.pink,
          fontSize: 21,
            ),
          )

        ],
      ),

      
        
    );
  }
}
     

          
