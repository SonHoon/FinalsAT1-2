import 'package:flutter/foundation.dart';  

class Balance with ChangeNotifier {  
  double _totalBalance = 100.00; // Example initial balance  

  double get totalBalance => _totalBalance;  

  void addIncome(double amount) {  
    _totalBalance += amount;  
    notifyListeners(); // Notify listeners to update the UI  
  }  

  void deductExpense(double amount) {  
    _totalBalance -= amount;  
    notifyListeners();  
  }  
}