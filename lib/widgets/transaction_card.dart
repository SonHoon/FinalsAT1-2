import 'package:flutter/material.dart';  

class TransactionCard extends StatelessWidget {  
  final String title;  
  final double amount;  
  final String date;  

  TransactionCard({required this.title, required this.amount, required this.date});  

  @override  
  Widget build(BuildContext context) {  
    return Card(  
      margin: EdgeInsets.symmetric(vertical: 8.0),  
      child: ListTile(  
        title: Text(title),  
        subtitle: Text(date),  
        trailing: Text(  
          '₱ ${amount.toStringAsFixed(2)}', // Change to peso sign  
          style: TextStyle(  
            color: amount < 0 ? Colors.red : Colors.green,  
            fontWeight: FontWeight.bold,  
          ),  
        ),  
      ),  
    );  
  }  
}