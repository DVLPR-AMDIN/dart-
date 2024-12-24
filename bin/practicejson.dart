List<Map<String, dynamic>> automobiles = [
  {
    "brand": "Toyota",
    "model": "Camry",
    "year": 2023,
    "color": "White",
    "engine": "Hybrid",
    "seats": 5,
    "price": 28000,
    "mileage": "40 mpg",
    "transmission": "Automatic",
    "fuelType": "Gasoline"
  },
  {
    "brand": "Tesla",
    "model": "Model S",
    "year": 2024,
    "color": "Red",
    "engine": "Electric",
    "seats": 5,
    "price": 79999,
    "mileage": "396 miles",
    "transmission": "Automatic",
    "fuelType": "Electric"
  },
  {
    "brand": "Ford",
    "model": "Mustang",
    "year": 2023,
    "color": "Blue",
    "engine": "V8",
    "seats": 4,
    "price": 55000,
    "mileage": "25 mpg",
    "transmission": "Manual",
    "fuelType": "Gasoline"
  },
  {
    "brand": "BMW",
    "model": "X5",
    "year": 2023,
    "color": "Black",
    "engine": "Turbocharged",
    "seats": 5,
    "price": 62000,
    "mileage": "23 mpg",
    "transmission": "Automatic",
    "fuelType": "Diesel"
  },
  {
    "brand": "Mercedes",
    "model": "C-Class",
    "year": 2023,
    "color": "Silver",
    "engine": "Turbocharged",
    "seats": 5,
    "price": 44000,
    "mileage": "30 mpg",
    "transmission": "Automatic",
    "fuelType": "Gasoline"
  },
  {
    "brand": "Honda",
    "model": "Civic",
    "year": 2024,
    "color": "Gray",
    "engine": "Turbocharged",
    "seats": 5,
    "price": 25000,
    "mileage": "36 mpg",
    "transmission": "CVT",
    "fuelType": "Gasoline"
  },
  {
    "brand": "Hyundai",
    "model": "Elantra",
    "year": 2024,
    "color": "White",
    "engine": "Inline-4",
    "seats": 5,
    "price": 21000,
    "mileage": "34 mpg",
    "transmission": "Automatic",
    "fuelType": "Gasoline"
  },
  {
    "brand": "Chevrolet",
    "model": "Impala",
    "year": 2023,
    "color": "Black",
    "engine": "V6",
    "seats": 5,
    "price": 32000,
    "mileage": "28 mpg",
    "transmission": "Automatic",
    "fuelType": "Gasoline"
  },
  {
    "brand": "Nissan",
    "model": "Altima",
    "year": 2024,
    "color": "Blue",
    "engine": "Inline-4",
    "seats": 5,
    "price": 25000,
    "mileage": "32 mpg",
    "transmission": "Automatic",
    "fuelType": "Gasoline"
  },
  {
    "brand": "Audi",
    "model": "A4",
    "year": 2023,
    "color": "White",
    "engine": "Turbocharged",
    "seats": 5,
    "price": 42000,
    "mileage": "27 mpg",
    "transmission": "Automatic",
    "fuelType": "Gasoline"
  }
];

class Car {
  String? brand;
  String? model;
  int? year;
  String? color;
  String? engine;
  Car.fromJson(Map<String, dynamic> newdata) {
    brand = newdata['brand'];
    model = newdata['model'];
    year = newdata['year'];
    color = newdata['color'];
    engine = newdata['engine'];
  }
  toJson() => {
        'brand': brand,
        'model': model,
        'year': year,
        'color': color,
        'engine': engine
      };
}

void main() {
  List<Car> newList = automobiles.map((e) => Car.fromJson(e)).toList();
  for (Car maan in newList) {
    print(maan.toJson());
  }
}
