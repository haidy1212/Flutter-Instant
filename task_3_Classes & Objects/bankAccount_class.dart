class Bankaccount {
  String accountNumber;
  String accountHolderName;
  double balance;

  Bankaccount({required this.accountNumber, required this.accountHolderName, required this.balance});

  void deposit(double amount) {
    if (amount > 0) {
      balance += amount;
      print("Deposit successful.");
      print('Deposited: $amount');
      print('New Balance: $balance');
    } else {
      print('Deposit amount must be greater than zero.');
    }
  }

  void withdraw(double amount) {
    if (amount <= 0) {
      print('Withdrawal amount must be greater than zero.');
    } else if (amount > balance) {
      print('Insufficient balance for withdrawal.');
    } else {
        balance -= amount;
        print("Withdrawal successful.");
        print('Withdrawn: $amount');
        print('New Balance: $balance');
    }
  }

  void displayBalance() {
    print('Account Number: $accountNumber');
    print('Account Holder: $accountHolderName');
    print('Current Balance: $balance');
  }
}

void main() {
  print('Bank Account Information:');
  Bankaccount account1 = Bankaccount(accountNumber: '123456789', accountHolderName: 'Haidy Hassan', balance: 1000.0);
  account1.displayBalance();
  print("\n===Deposit===");
  account1.deposit(500.0);
  print("\n===Withdraw===");
  account1.withdraw(200.0);
  print("\n===Final Balance===");
  account1.displayBalance();

  print("\n=======================================");

  Bankaccount account2 = Bankaccount(accountNumber: '987654321', accountHolderName: 'Salma Abdelhamid', balance: 2000.0);
  account2.displayBalance();
  print("\n===Deposit===");
  account2.deposit(1000.0);
  print("\n===Withdraw===");
  account2.withdraw(3000.0); 
  print("\n===Final Balance===");
  account2.displayBalance();
}