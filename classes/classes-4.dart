void main() {
  List mixList = new List();
  mixList.add("Berlin");
  mixList.add(1);
//------------------------------------------
  List<String> cities = new List<String>();
  cities.add("Ankara");
  cities.add("İzmir");
  cities.add("İstanbul");
  var length = cities.length;
  print(length);
  cities.removeAt(1);
  cities.remove("Ankara");
  cities.removeLast();
//------------------------------------------
  List<Customer> customers = new List<Customer>();
  customers.add(new Customer());
}

class Customer {
  int id;
  String name;
  String lastName;
  String city;
}
