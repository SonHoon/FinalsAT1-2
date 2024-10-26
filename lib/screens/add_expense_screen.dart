import 'package:flutter/material.dart';  

class AddExpenseScreen extends StatelessWidget {  
  final TextEditingController amountController = TextEditingController();  
  final TextEditingController categoryController = TextEditingController();  
  final TextEditingController noteController = TextEditingController();  
  final TextEditingController dateController = TextEditingController();  

  @override  
  Widget build(BuildContext context) {  
    return Scaffold(  
      appBar: AppBar(  
        title: Text('Add Expenses'),  
      ),  
      body: Padding(  
        padding: const EdgeInsets.all(16.0),  
        child: Column(  
          crossAxisAlignment: CrossAxisAlignment.start,  
          children: [  
            Text(  
              '₱ ${amountController.text.isEmpty ? '0' : amountController.text}',  
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),  
            ),  
            TextField(  
              controller: amountController,  
              decoration: InputDecoration(labelText: 'Amount'),  
              keyboardType: TextInputType.number,  
            ),  
            TextField(  
              controller: categoryController,  
              decoration: InputDecoration(labelText: 'Category'),  
            ),  
            TextField(  
              controller: noteController,  
              decoration: InputDecoration(labelText: 'Note'),  
            ),  
            TextField(  
              controller: dateController,  
              decoration: InputDecoration(labelText: 'Date'),  
              readOnly: true,  
              onTap: () async {  
                DateTime? pickedDate = await showDatePicker(  
                  context: context,  
                  initialDate: DateTime.now(),  
                  firstDate: DateTime(2000),  
                  lastDate: DateTime(2101),  
                );  
                if (pickedDate != null) {  
                  dateController.text = "${pickedDate.toLocal()}".split(' ')[0];  
                }  
              },  
            ),  
            SizedBox(height: 20),  
            Center(  
              child: ElevatedButton(  
                onPressed: () {  
                   
                  Navigator.pop(context);  
                },  
                style: ElevatedButton.styleFrom(  
                  backgroundColor: Colors.pink,  
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),  
                  shape: RoundedRectangleBorder(  
                    borderRadius: BorderRadius.circular(30),  
                  ),  
                ),  
                child: Text('SAVE', style: TextStyle(color: Colors.white)),  
              ),  
            ),  
          ],  
        ),  
      ),  
    );  
  }  
}