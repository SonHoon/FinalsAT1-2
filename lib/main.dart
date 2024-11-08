// lib/main.dart  
import 'package:flutter/material.dart';  
import 'package:provider/provider.dart';  
import 'providers/transaction_provider.dart'; // Include your provider  
import 'screens/home_screen.dart';  

void main() {  
   runApp(  
      ChangeNotifierProvider(  
         create: (context) => TransactionProvider(),  
         child: MyApp(),  
      ),  
   );  
}  

class MyApp extends StatelessWidget {  
   @override  
   Widget build(BuildContext context) {  
      return MaterialApp(  
         title: 'Transaction App',  
         home: HomeScreen(),  
      );  
   }  
}