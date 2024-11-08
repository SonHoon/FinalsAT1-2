// lib/screens/home_screen.dart  
import 'package:flutter/material.dart';  
import 'package:provider/provider.dart';  
import '../providers/transaction_provider.dart'; // Import the provider  
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
    final transactionProvider = Provider.of<TransactionProvider>(context); // Access the provider  

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
                child: ListView.builder(  
                  itemCount: transactionProvider.transactions.length,  
                  itemBuilder: (context, index) {  
                    final transaction = transactionProvider.transactions[index];  
                    return GestureDetector(  
                      onTap: () => _onTransactionTap(transaction.title),  
                      child: TransactionCard(  
                        title: transaction.title,  
                        amount: transaction.amount,  
                        date: transaction.date,  
                      ),  
                    );  
                  },  
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