main() {
  int a = 10;
  int b = 0;
  int res;

  try {
    res = a ~/ b;
    print(res);
  } on IntegerDivisionByZeroException catch (e) {
    print(e);
  } catch (e) {
    print(e);
  } finally {
    print("Always running");
  }
//----------------------------------------

  try {
    setAge(12);
  } catch (e) {
    print(e);
  }

//----------------------------------------
  try {
    calculate(100);
  } on RuleException catch (e) {
    print(e.errorMessage());
  }
}

void setAge(int age) {
  if (age < 13) {
    throw new Exception("Age must be greater than 13..!");
  }
}

//----------------------------------------

class RuleException implements Exception {
  String errorMessage() => 'Warning Rule Exception!';
}

void calculate(double amount) {
  if (amount < 1000) {
    throw new RuleException();
  }
}
