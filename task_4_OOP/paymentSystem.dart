abstract class Payment {
  void pay(double amount);
}

class CashPayment extends Payment {
  @override
  void pay(double amount) {
    print("Paid \$${amount} using Cash.");
  }
}

class CreditCardPayment extends Payment {
  @override
  void pay(double amount) {
    print("Paid \$${amount} using Credit Card.");
  }
}

class PayPalPayment extends Payment {
  @override
  void pay(double amount) {
    print("Paid \$${amount} using PayPal.");
  }
}

void main() {
  List<Payment> payments = [
    CashPayment(),
    CreditCardPayment(),
    PayPalPayment(),
  ];

  for (Payment payment in payments) {
    payment.pay(500);
  }
}