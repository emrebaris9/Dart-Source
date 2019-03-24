//-----Inheritance------

void main() {
  CustomerManager customerManager = new CustomerManager();
  customerManager.GetBestCustomer();
  customerManager.Save();
  CustomerManager.operation(); //call static method 

  PersonelManager personelManager = new PersonelManager();
  personelManager.Pay();
  personelManager.Save();
}

class PersonManager {
  void Save() {
    print("Saved");
  }
}

class CustomerManager extends PersonManager {
  // so extends Save()
  void GetBestCustomer() {
    print("Best Customer Listed");
  }

  static operation(){
    print("Static operation work");
  }
}

class PersonelManager extends PersonManager {
  void Pay() {
    print("Salary payed");
  }

  @override // write on
  void Save() {
    print("Logged");
    super.Save(); // PersonManagers Save method
  }
}

class Person {
  int id;
  String name;
}

class Customer extends Person {
  // so extends id & name
  String creditCardNo;
}
