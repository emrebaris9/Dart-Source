// interface implementation (polimorfizm)
class CustomerManager implements ICustomerManager {
  @override
  void Save(ILogger logger) {
    print("Customer Saved...");
    logger.Log("Log Data");
  }
}

class ICustomerManager {
  void Save(ILogger logger) {}
}

//-------------------------------------
class ILogger {
  void Log(String message) {}
}

class EmailLogger implements ILogger {
  @override
  void Log(String message) {
    print("Logged to Mail " + message);
  }
}

class DatabaseLogger implements ILogger {
  @override
  void Log(String message) {
    print("Logged to Database " + message);
  }
}

//-------------------------------------
void main() {
  CustomerManager customerManager = new CustomerManager();
  customerManager.Save(new DatabaseLogger()); //or new EmailLogger()
}
