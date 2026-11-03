import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.pink,
        foregroundColor: Colors.white,
        elevation: 0,
        title: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Discover',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,

              ),
            ),
            Text(
              'Combats',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],

        ),
        
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16, top: 36),
            child:
              Text('FILTER',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],    
      ),
      body: Padding(

        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [ Text(
              'Trending this week',
              style: TextStyle(
                color: Colors.pink,
                fontSize: 21,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text('View All >>'),
          ],
          ),
          SizedBox(height: 20),
          //карточка 1
          Container( 
            width: double.infinity,
            height: 100, //ращмер
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.pink),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 32),
                  child: const Text(
                    'Scott Brown',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w400
                    ),
                  
                  ),
                ),
                  const Text(
                    
                    'VS',
                    style: TextStyle(
                      color: Colors.pink,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                
                Padding(
                  padding: const EdgeInsets.only(right: 32),
                  child: const Text(
                    'Stone Stella',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w400
                    ),
                  
                    ),
                ),
                
              ],
            ),
            ),
          ],
        ),
      ),
    );
  }
}
     

          
