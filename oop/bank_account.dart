class BankAccount {
  double _balance = 0.0;

  void deposit(double amount) {
    _balance += amount;
  }

  void withdraw(double amount) {
    if (amount <= _balance) {
      _balance -= amount;
    } else {
      print("Insufficient funds");
    }
  }

  double get representative_balance => _balance;


}

void main() {
  BankAccount account = BankAccount();
  account.deposit(1000.0);

  account.withdraw(500.0);

  print("Current balance: \$${account.representative_balance}");
 
}