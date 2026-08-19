class BankAccount{
  String accountNumber;
  String owner;
  double balance;

  BankAccount(this.accountNumber, this.owner, this.balance);

  void deposit(double amount){
    if(amount > 0){
      balance += amount;
      print('\nDeposit of $amount successful. New balance: $balance');
    } else {
      print('\nDeposit amount must be positive.');
    }
  }

  void withdraw(double amount){
    if(amount > 0 && amount <= balance){
      balance -= amount;
      print('Withdrawal of $amount successful. New balance: $balance');
    } else {
      print('Insufficient balance or invalid withdrawal amount.');
    }
  }

  void displayBalance(){
    print('Account Number: $accountNumber,\nOwner Name: $owner,\nBalance: $balance');
  }
}
void main() {
  BankAccount account1 = BankAccount('123456789', 'haidy hassan', 1000.0);
  BankAccount account2 = BankAccount('987654321', 'salma abdelhamid', 500.0);

  account1.displayBalance();
  account1.deposit(200.0);
  account1.withdraw(150.0);

  print("================================");

  account2.displayBalance();
  account2.deposit(300.0);
  account2.withdraw(800.0);
}