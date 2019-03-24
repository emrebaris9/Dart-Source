void main() {
  String name = "Tv";
  int price = 300;

  print("This " + name + ", Price: " + price.toString() + " USD");

//------------If------------------------
  var piece = 50;
  bool stock = piece >= 1;

  if (stock) {
    print("available");
  } else {
    print("not available");
  }

//--------------S-C----------------------
  var mark = "B";

  switch (mark) {
    case "A":
      {
        print("High");
      }
      break;
    case "B":
      {
        print("Medium");
      }
      break;
    case "C":
      {
        print("Low");
      }
      break;
    default:
      {
        print("unknown");
      }
      break;
  }
  //---------------Arrays---------------------

  var cities = ["Istanbul", "Ankara", "Berlin", "Kiev"];
  cities.add("Paris");
  cities.insert(3, "New York");
  print(cities); // cities.length cities.first citiest.last
  print(cities.firstWhere((s) => s.contains("e")));

  //-------------Loops-----------------------
  for (var city in cities) {
    print(city);
  }
  var numb = 5;
  while (numb <= 10) {
    print(numb);
    numb++;
  }

  //---------------Maps---------------------------

  var dictionary = {
    "name": "isim",
    "number": "sayı",
    "piece": "adet",
    "city": "şehir",
  };
  dictionary["price"] = "fiyat";
  dictionary["city"] = "il";
  print(dictionary);

  for (var word in dictionary.keys) {
    print("English:" + word);
  }
  for (var word in dictionary.values) {
    print("Türkish:" + word);
  }

  dictionary.forEach((k, v) => print(k));

  //---------------Functions-----------------------
  var result = power(3);
  hello("Emre " + result.toString());

  test('Yunus', b: "Baris", c: "Emre");
  test('Yunus', c: "Baris", b: "Emre");
}

//----------------------------
void hello(String name) {
  print("Hello " + name);
}

int power(int number) {
  return number * number;
}

void test(a, {b, c}) {
  print(a + b + c);
}
