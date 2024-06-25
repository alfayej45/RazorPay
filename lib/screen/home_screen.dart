

import 'package:flutter/material.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

import '../helpar/razorpay.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:  Text('Razarpay Test'),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed:(){

              RazorPayHelpar().razorpayhandel();

            },
            child: Text('Payment')),
      ),
    );
  }
}
