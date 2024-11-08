// lib/widgets/add_transaction_button.dart  
import 'package:flutter/material.dart';  
import 'package:provider/provider.dart';  
import '../providers/transaction_provider.dart';  

class AddTransactionButton extends StatelessWidget {  
  @override  
  Widget build(BuildContext context) {  
    return ElevatedButton(  
      onPressed: () {  
        // Here you can implement the logic to show a dialog or a new screen to add a transaction  
        // For simplicity, we will add a sample transaction directly  
        Provider.of<TransactionProvider>(context, listen: false).addTransaction('New Transaction', 100.0, 'Today');  
      },  
      child: Text('Add Transaction'),  
    );  
  }  
}