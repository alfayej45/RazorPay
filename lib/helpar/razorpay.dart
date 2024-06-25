

import 'package:fluttertoast/fluttertoast.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';
import 'package:flutter/material.dart';

class RazorPayHelpar{

  Razorpay razorpay =Razorpay();


  razorpayhandel(){
    razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, handlePaymentSuccess);
    razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, handlePaymentError);

    var options = {
      'key': 'rzp_test_1DP5mmOlF5G5ag',
      'amount': 1000,
      'name': 'Acme Corp.',
      'description': 'Fine T-Shirt',
      'prefill': {
        'contact': '+8801300503082',
        'email': 'info@gmail.com'
      }
    };

    razorpay.open(options);

  }



  void handlePaymentSuccess(PaymentSuccessResponse response) {

    print("Transaction ID: ${response.paymentId}");

    Fluttertoast.showToast(
        msg: "Payment Success",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
    );


    // Do something when payment succeeds
  }

  void handlePaymentError(PaymentFailureResponse response) {
    Fluttertoast.showToast(
        msg: "Payment Field",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
    );
    // Do something when payment fails
  }


}