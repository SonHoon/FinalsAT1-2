import 'package:flutter/material.dart';  
import '../widgets/balance_card.dart';  
import '../widgets/transaction_card.dart';  
import '../widgets/add_transaction_button.dart';  
import 'transactions_screen.dart';  

class HomeScreen extends StatefulWidget {  
  @override  
  _HomeScreenState createState() => _HomeScreenState();  
}  

class _HomeScreenState extends State<HomeScreen> {  
  bool _isDarkMode = false; // State variable for dark mode  

  void _toggleTheme(bool value) {  
    setState(() {  
      _isDarkMode = value; // Update the theme state  
    });  
  }  

  // Function to handle transaction tap  
  void _onTransactionTap(String title) {  
    showDialog(  
      context: context,  
      builder: (context) {  
        return AlertDialog(  
          title: Text(title),  
          content: Text('Details for $title'),  
          actions: [  
            TextButton(  
              onPressed: () => Navigator.of(context).pop(),  
              child: Text('Close'),  
            ),  
          ],  
        );  
      },  
    );  
  }  

  @override  
  Widget build(BuildContext context) {  
    return MaterialApp(  
      theme: _isDarkMode ? ThemeData.dark() : ThemeData.light(), // Apply theme  
      home: Scaffold(  
        appBar: AppBar(  
          title: Text('Hello Jerson Agapay'),  
          actions: [  
            Switch(  
              value: _isDarkMode,  
              onChanged: _toggleTheme,  
              activeColor: Colors.white,  
            ),  
          ],  
        ),  
        body: Padding(  
          padding: const EdgeInsets.all(16.0),  
          child: Column(  
            crossAxisAlignment: CrossAxisAlignment.start,  
            children: [  
              BalanceCard(),  
              SizedBox(height: 20),  
              Text('Transactions', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),  
              Align(  
                alignment: Alignment.centerRight,  
                child: TextButton(  
                  onPressed: () {  
                    Navigator.push(  
                      context,  
                      MaterialPageRoute(builder: (context) => TransactionsScreen()),  
                    );  
                  },  
                  child: Text('View All', style: TextStyle(color: Colors.blue)),  
                ),  
              ),  
              Expanded(  
                child: ListView(  
                  children: [  
                    GestureDetector(  
                      onTap: () => _onTransactionTap('Food'),  
                      child: TransactionCard(title: 'Food', amount: -45.00, date: 'Today'),  
                    ),  
                    GestureDetector(  
                      onTap: () => _onTransactionTap('Shopping'),  
                      child: TransactionCard(title: 'Shopping', amount: -280.00, date: 'Today'),  
                    ),  
                    GestureDetector(  
                      onTap: () => _onTransactionTap('Entertainment'),  
                      child: TransactionCard(title: 'Entertainment', amount: -60.00, date: 'Yesterday'),  
                    ),  
                    GestureDetector(  
                      onTap: () => _onTransactionTap('Travel'),  
                      child: TransactionCard(title: 'Travel', amount: -250.00, date: 'Yesterday'),  
                    ),  
                  ],  
                ),  
              ),  
              SizedBox(height: 20),  
              Center(  
                child: AddTransactionButton(),  
              ),  
            ],  
          ),  
        ),  
      ),  
    );  
  }  
}