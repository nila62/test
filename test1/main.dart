void main(){
  List <Map <String,dynamic>> fruits=[
   {'name': 'apple','color':'red','price':2.5},
    {'name': 'mango','color':'yellow','price':1.0},
    {'name': 'grapes','color':'green','price':3.0},
  ];
  print('Original Fruit Details before Discount:');
  displayFruitDetails(fruits);
  applyPriceDiscount(fruits,10);
  print("Fruit Details After Applying 10% Discount:");
  displayFruitDetails(fruits);
}

void displayFruitDetails(List<Map<String, dynamic>> fruits) {
  for (var fruit in fruits) {
    print('Name: ${fruit['name']}, ' 'Color: ${fruit['color']} ,' 'Price: \$${fruit['price']}');


  }
}
 void applyPriceDiscount(List<Map<String, dynamic>> fruits,double discountPercentage){
   for (var fruit in fruits) {
     double originalPrice = fruit['price'];
     double discountedPrice = originalPrice-(originalPrice * discountPercentage / 100);
     fruit['price'] = discountedPrice;

   }

}