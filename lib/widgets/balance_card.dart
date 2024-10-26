import 'package:flutter/material.dart';  

class BalanceCard extends StatelessWidget {  
  @override  
  Widget build(BuildContext context) {  
    return Container(  
      padding: EdgeInsets.all(20),  
      decoration: BoxDecoration(  
        gradient: LinearGradient(  
          colors: [Colors.pink, Colors.blue],  
          begin: Alignment.topLeft,  
          end: Alignment.bottomRight,  
        ),  
        borderRadius: BorderRadius.circular(15),  
      ),  
      child: Column(  
        crossAxisAlignment: CrossAxisAlignment.start,  
        children: [  
          Text('Total Balance', style: TextStyle(color: Colors.white)),  
          SizedBox(height: 10),  
          Text('\₱100.00', style: TextStyle(fontSize: 32, color: Colors.white)),  
          SizedBox(height: 10),  
          Row(  
            mainAxisAlignment: MainAxisAlignment.spaceBetween,  
            children: [  
              Column(  
                crossAxisAlignment: CrossAxisAlignment.start,  
                children: [  
                  Text('Allowance', style: TextStyle(color: Colors.white)),  
                  Text('\₱100.00', style: TextStyle(color: Colors.white)),  
                ],  
              ),  
              Column(  
                crossAxisAlignment: CrossAxisAlignment.start,  
                children: [  
                  Text('Expenses', style: TextStyle(color: Colors.white)),  
                  Text('\₱500.00', style: TextStyle(color: Colors.white)),  
                ],  
              ),  
            ],  
          ),  
        ],  
      ),  
    );  
  }  
}