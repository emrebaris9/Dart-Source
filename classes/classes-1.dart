void main() {
  CustomerMAnager customerMAnager = new CustomerMAnager();

  Customer customer = new Customer.namedCons("Emre", "Baris", 5555);
  // customer.customerName = "E";  // for use set method

  customerMAnager.Save(customer);
  customerMAnager.Delete(customer);
  customerMAnager.Update(customer);
}

class CustomerMAnager {
  void Save(Customer customer) {
    print("Customer Saved: " + customer.name);
  }

  void Delete(Customer customer) {
    print("Customer Deleted: " + customer.name);
  }

  void Update(Customer customer) {
    print("Customer Updated: " + customer.name);
  }
}

class Customer {
  String name;
  String lastname;
  int phone;

  Customer.namedCons(String name, String lastname, int phone) {
    // named constructor
    this.name = name;
    this.lastname = lastname;
    this.phone = phone;
    print("class created...");
  }
  Customer() {}

  void set customerName(String name) {
    if (name.length < 2) {
      print("Customer name must be at least 2 characters");
    } else {
      this.name = name;
    }
  }
}
