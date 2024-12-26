class Elec {
  String? name;
  String? brand;
  int? price;
  int? stock;

  Elec(this.brand, this.name, this.price, this.stock);
  Elec.fromJson(Map<String, dynamic> data) {
    name = data['name'];
    brand = data['brand'];
    price = data['price'];
    stock = data['stock'];
  }
  toJson() => {
        'name': name,
        'brand': brand,
        'price': price,
        'stock': stock,
      };
}

void main() {
  Map<String, Map<String, dynamic>> electronics = {
    'P001': {'name': 'Smartphone', 'brand': 'Apple', 'price': 999, 'stock': 50},
    'P002': {'name': 'Laptop', 'brand': 'Dell', 'price': 799, 'stock': 30},
    'P003': {'name': 'Tablet', 'brand': 'Samsung', 'price': 499, 'stock': 40},
    'P004': {
      'name': 'Smartwatch',
      'brand': 'Garmin',
      'price': 199,
      'stock': 70
    },
    'P005': {'name': 'Headphones', 'brand': 'Sony', 'price': 149, 'stock': 100},
    'P006': {'name': 'Camera', 'brand': 'Canon', 'price': 899, 'stock': 20},
    'P007': {'name': 'Television', 'brand': 'LG', 'price': 599, 'stock': 15},
    'P008': {'name': 'Speaker', 'brand': 'Bose', 'price': 249, 'stock': 60},
    'P009': {'name': 'Monitor', 'brand': 'HP', 'price': 179, 'stock': 35},
    'P010': {
      'name': 'Gaming Console',
      'brand': 'Microsoft',
      'price': 499,
      'stock': 25
    },
    'P011': {'name': 'Router', 'brand': 'TP-Link', 'price': 99, 'stock': 80},
    'P012': {
      'name': 'Keyboard',
      'brand': 'Logitech',
      'price': 49,
      'stock': 150
    },
    'P013': {'name': 'Mouse', 'brand': 'Razer', 'price': 59, 'stock': 120},
    'P014': {'name': 'Drone', 'brand': 'DJI', 'price': 1199, 'stock': 10},
    'P015': {
      'name': 'VR Headset',
      'brand': 'Oculus',
      'price': 399,
      'stock': 25
    },
    'P016': {'name': 'Power Bank', 'brand': 'Anker', 'price': 29, 'stock': 200},
    'P017': {
      'name': 'Electric Kettle',
      'brand': 'Philips',
      'price': 39,
      'stock': 100
    },
    'P018': {
      'name': 'Air Purifier',
      'brand': 'Dyson',
      'price': 549,
      'stock': 12
    },
    'P019': {'name': 'Smart Bulb', 'brand': 'LIFX', 'price': 19, 'stock': 300},
    'P020': {'name': 'Projector', 'brand': 'Epson', 'price': 699, 'stock': 18},
  };

  List value = electronics.values.toList();
  List<Elec> data = value.map((e) => Elec.fromJson(e)).toList();
  //var serach = data.where((e) => e.name!.contains('wer')).toList();
  data.forEach((e) => print(e.name));

  // electronics.forEach((id, details) {
  //   print('$id: $details');
  // });
}
