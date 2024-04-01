
class ProductData {
  static Set<Map<String, dynamic>> cartData = {};
  static List<Map<String, dynamic>> cartProductData = [];

  static Set<Map<String, dynamic>> favData = {};
  static List<Map<String, dynamic>> favProductData = [];

  static List<Map<String, dynamic>> allProductsData = <Map<String, dynamic>>
  [
    {
      'name': 'bags',
      'data': [
        {
          "id": 1,
          "title": "HandBag",
          "description": "",
          "price": 15.00,
          "discountPercentages": 5.00,
          "rating": 4.5,
          "total" : 15,
          "time": "10min",
          "description" : "Elevate your wardrobe with our collection of women's fashion clothes",
          "thumbnail": "https://m.media-amazon.com/images/I/61+tm-W10+L._SY695_.jpg",
          "image": [
            "https://m.media-amazon.com/images/I/61+tm-W10+L._SY695_.jpg",
          ]
        },
        {
          "id": 2,
          "title": "Shoulder bag",
          "description": "Enjoy the burst of freshness and antioxidants from the colorful berries, balanced with the earthy notes of greens and nuts.",
          "price": 12.00,
          "discountPercentages": 0.00,
          "rating": 4.7,
          "total" : 12,
          "count" : 0,
          "kcl": "120",
          "average": "5-10",
          "description" : "From tailored blazers to flowing dresses, our selection offers versatile pieces ",
        "time": "8min",
          "category" : "Hot sale",
          "delivery" : 3.50,
          "like": true,
          "thumbnail": "https://m.media-amazon.com/images/I/71Raw8VUk5L._SY695_.jpg",
          "image": [
          ]
        },
      ],
    },
    {
      'name': 'Shirts',
      'data': [
        {
          "id": 1,
          "title": "OverSized Shirt",
          "description": "",
          "price": 15.00,
          "discountPercentages": 5.00,
          "rating": 4.5,
          "total" : 15,
          "time": "10min",
        "description" : "Indulge in the luxury of premium fabrics and impeccable craftsmanship,",
          "thumbnail": "https://m.media-amazon.com/images/I/61wwLxKN6gL._SY741_.jpg",
          "image": [
          ]
        },
        {
          "id": 1,
          "title": "Crop Shirt",
          "description": "",
          "price": 15.00,
          "discountPercentages": 5.00,
          "rating": 4.5,
          "total" : 15,
          "time": "10min",
        "description" : "Complete your look with our range of statement jewelr",
          "thumbnail": "https://m.media-amazon.com/images/I/51JkzkdHLVL.jpg",
          "image": [
          ]
        },
      ],
    },
    {
      'name': 'Saree',
      'data': [
        {
          "id": 1,
          "title": "Cotton Saree",
          "description": "",
          "price": 15.00,
          "discountPercentages": 5.00,
          "rating": 4.5,
          "total" : 15,
          "time": "10min",
        "description" : "Complete your look with our range of statement jewelry",
          "thumbnail": "https://m.media-amazon.com/images/I/41ykC0f0VTL.jpg",
          "image": [
          ]
        },
        {
          "id": 1,
          "title": "partywear",
          "description": "",
          "price": 15.00,
          "discountPercentages": 5.00,
          "rating": 4.5,
          "total" : 15,
          "time": "10min",
        "description" : "Explore our collection today",
          "thumbnail": "https://m.media-amazon.com/images/I/61vxtfdd9KL._SX679_.jpg",
          "image": [

          ]
        },
      ],
    },
    {
      'name': 'Top',
      'data': [
        {
          "id": 1,
          "title": "Crop top",
          "description" : "Explore our collection today and discover the perfect ensemble to express ",
          "price": 15.00,
          "discountPercentages": 5.00,
          "rating": 4.5,
          "total" : 15,
          "time": "10min",
          "thumbnail": "https://m.media-amazon.com/images/I/61ybyBbP0wL._SY879_.jpg",
          "image": [

          ]
        },
        {
          "id": 1,
          "title": "OverSized Shirt",
          "description": "",
          "price": 15.00,
          "discountPercentages": 5.00,
          "description" : "Explore our collection today and discover the perfect ensemble .",
          "rating": 4.5,
          "total" : 15,
          "time": "10min",
          "thumbnail": "https://m.media-amazon.com/images/I/61-jXMCSTfL._SY879_.jpg",
          "image": [
          ]
        },
      ],
    },
    {
      'name': 'Pants',
      'data': [
        {
          "id": 1,
          "title": "Wideleg jeans",
          "description": "",
          "price": 15.00,
          "discountPercentages": 5.00,
          "rating": 4.5,
          "total" : 15,
          "description" : "Explore our collection today and discover ",
          "thumbnail": "https://m.media-amazon.com/images/I/51Mpt+UmnxL._SY879_.jpg",
          "image": [
            "https://healthyfitnessmeals.com/wp-content/uploads/2022/05/Fruit-salad-recipe-4.jpg",
          ]
        },
        {
          "id": 1,
          "title": "Mom fit",
          "description": "",
          "price": 15.00,
          "discountPercentages": 5.00,
          "rating": 4.5,
          "total" : 15,
          "time": "10min",
          "description" : "Explore our collection today and discover ",
          "thumbnail": "https://m.media-amazon.com/images/I/71c4B8XvBqL._SX679_.jpg",
          "image": [

          ]
        },
      ],
    },
  ];

  static void convertUniiqueData() {
    cartProductData = cartData.toList();
  }

  static void convertData() {
    favProductData = favData.toList();
  }
  static num totalPrice() {
    num sum = 0.0;
    for (var element in cartProductData) {
      sum=sum+element['total'];
    }
    return sum;
  }

  static num grandTotal(){
    num add=0.0;
    for(var element in cartProductData){
      add=totalPrice()+element['delivery'];
    }
    return add;
  }
}
