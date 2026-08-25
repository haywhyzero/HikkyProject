import '../classes/class3.dart';

class BankAccount {
  double _balance = 0.0;

  void deposit(double amount) {
    _balance += amount;
  }

  void withdraw(double amount) {
    if (amount <= _balance) {
      _balance -= amount;
    } else {
      throw InsufficientFundsException("Insufficent Funds to withdraw!");
    }
  }

  double get representative_balance => _balance;


}

void main() {
  try {
  BankAccount account = BankAccount();
  account.deposit(1000.0);

  account.withdraw(1500.0);

  print("Current balance: \$${account.representative_balance}");
  } on InsufficientFundsException catch (e) {
    print("Error Occured! " + e.message);
  } 
 
 
}