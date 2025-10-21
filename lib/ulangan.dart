import 'package:flutter/material.dart';

class Ulangan extends StatelessWidget {
  const Ulangan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(        
   
      ),
      body: Column(
        children: [
          SizedBox(height: 20,),
          Text('Flutter layout demo', style: TextStyle(fontSize: 24,),),
          SizedBox(height: 20),
          Image.asset('aset/wel.webp'),
          SizedBox(height: 20),  
          Text('oeschinen Lake Campground', style: TextStyle(fontWeight: FontWeight.bold),),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
             
              Icon(Icons.star, color: Colors.red,),
              Text('41'),
              
            ],
          ), 
          Text('Kandersteg, Switzerland'),     

          SizedBox(height: 20), 
          Row(    
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Icon(Icons.call, color: const Color.fromARGB(255, 0, 0, 0),),
                  Text('Call', style: TextStyle(color: const Color.fromARGB(255, 2, 2, 2)),),                
               ],
              ),        
              Column(
                children: [
                  Icon(Icons.near_me, color: const Color.fromARGB(255, 0, 0, 0),),
                  Text('Route', style: TextStyle(color: const Color.fromARGB(255, 2, 2, 2)),),                
               ],
              ),
              Column(
                children: [
                  Icon(Icons.share, color: const Color.fromARGB(255, 0, 0, 0),),
                  Text('Share', style: TextStyle(color: const Color.fromARGB(255, 2, 2, 2)),),                
               ],
              ),
            ],
          ),   
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text('Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer. Activities enjoyed here include rowing, and riding the summer toboggan run.'),
          ),
        ],
      ),      
    );
  }
}


