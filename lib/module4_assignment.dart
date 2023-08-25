abstract class Account {
  late int accountNumber;
  late double balance;

  deposit(double amount) => balance += amount;

  withdraw(double amount);
}

class SavingsAccount extends Account {
  late double interestRate;

  SavingsAccount({required int accountNumber, required double balance, required this.interestRate});

  @override
  withdraw(double amount) {
    balance -= amount;
    balance *= (1 + interestRate);
  }
}

class CurrentAccount extends Account {
  late double overdraftLimit;

  CurrentAccount({required int accountNumber, required double balance, required this.overdraftLimit});

  @override
  withdraw(double amount) {
    if (amount <= overdraftLimit) {
      balance -= amount;
    } else {
      print("Insufficient funds.");
    }
  }
}

void main() {
  SavingsAccount userSavingsAccount = SavingsAccount(accountNumber: 5678, balance: 8500, interestRate: 0.05);

  userSavingsAccount.deposit(1000);
  userSavingsAccount.withdraw(3000);

  CurrentAccount userCurrentAccount = CurrentAccount(accountNumber: 3456, balance: 10500, overdraftLimit: 6000);

  userCurrentAccount.deposit(9000);
  userCurrentAccount.withdraw(7000);
}
