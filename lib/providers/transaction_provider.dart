// lib/providers/transaction_provider.dart  
import 'package:flutter/foundation.dart';  
import '../models/transaction.dart';  

class TransactionProvider with ChangeNotifier {  
   final List<Transaction> _transactions = [];  

   List<Transaction> get transactions => _transactions;  

   void addTransaction(String title, double amount, String date) {  
      _transactions.add(Transaction(title: title, amount: amount, date: date));  
      notifyListeners();  
   }  

   // You can also have a method to remove a transaction, etc.  
}