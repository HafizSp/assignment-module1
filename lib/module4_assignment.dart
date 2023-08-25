abstract class Account {
  late int accountNumber;
  late double balance;

  deposit(double amount) => balance += amount;
  withdraw(double amount);
}

class SavingsAccount extends Account {
  late double interestRate;

  @override
  withdraw(double amount) {
    balance -= amount;
    balance *= (1 + interestRate);
  }
}

class CurrentAccount extends Account {
  late double overdraftLimit;

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
  SavingsAccount userSavingsAccount = SavingsAccount();

  userSavingsAccount.accountNumber = 5678;
  userSavingsAccount.balance = 8500;
  userSavingsAccount.interestRate = 1.5;
  userSavingsAccount.deposit(1000);
  userSavingsAccount.withdraw(3000);

  CurrentAccount userCurrentAccount = CurrentAccount();

  userCurrentAccount.accountNumber = 3456;
  userCurrentAccount.balance = 10500;
  userCurrentAccount.overdraftLimit = 6000;
  userCurrentAccount.deposit(9000);
  userCurrentAccount.withdraw(7000);
}
