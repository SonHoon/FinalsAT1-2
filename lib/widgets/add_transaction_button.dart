import 'package:flutter/material.dart';  
import '../screens/add_expense_screen.dart';  

class AddTransactionButton extends StatelessWidget {  
  @override  
  Widget build(BuildContext context) {  
    return FloatingActionButton(  
      onPressed: () {  
        Navigator.push(  
          context,  
          MaterialPageRoute(builder: (context) => AddExpenseScreen()),  
        );  
      },  
      child: Icon(Icons.add),  
      backgroundColor: Colors.pink,  
    );  
  }  
}