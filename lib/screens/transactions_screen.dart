import 'package:flutter/material.dart';  

class TransactionsScreen extends StatelessWidget {  
  @override  
  Widget build(BuildContext context) {  
    return Scaffold(  
      appBar: AppBar(  
        title: Text('Transactions'),  
        backgroundColor: Colors.blueAccent,  
      ),  
      body: Padding(  
        padding: const EdgeInsets.all(16.0),  
        child: Column(  
          crossAxisAlignment: CrossAxisAlignment.start,  
          children: [  
            Text(  
              ' Januar 1, 2024 - October 26, 2024',  
              style: TextStyle(fontSize: 16),  
            ),  
            SizedBox(height: 8),  
            Text(  
              '\₱1500.00',  
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),  
            ),  
            SizedBox(height: 16),  
            Expanded(  
              child: Center(  
                child: Text(  
                  'Chart Placeholder',  
                  style: TextStyle(fontSize: 18, color: Colors.grey),  
                ),  
              ),  
            ),  
            SizedBox(height: 16),  
            Row(  
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,  
              children: [  
                ElevatedButton(  
                  onPressed: () {  
                    // Navigate to Income screen  
                  },  
                  child: Text('Income'),  
                  style: ElevatedButton.styleFrom(  
                    backgroundColor: Colors.green,  
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),  
                  ),  
                ),  
                ElevatedButton(  
                  onPressed: () {  
                    // Navigate to Expenses screen  
                  },  
                  child: Text('Expenses'),  
                  style: ElevatedButton.styleFrom(  
                    backgroundColor: Colors.red,  
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),  
                  ),  
                ),  
              ],  
            ),  
          ],  
        ),  
      ),  
    );  
  }  
}
