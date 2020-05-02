class Salary {
  Salary(this.salary,
      {this.unit = SalaryUnit.YEAR, this.currency = Currency.USD});

  int salary;
  SalaryUnit unit;
  Currency currency;
}

enum SalaryUnit {
  YEAR,
  MONTH,
}

enum Currency { USD, KRW, JPY }
