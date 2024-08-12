class Recipe{
    final String image;
    final String name;
     final int  servings;
     List <Ingredient>ingredients;
    Recipe({required this.image,required this.name , required this.ingredients, required this.servings });
    static List<Recipe> samples = [
      Recipe(
        name: 'Spaghetti and Meatballs',    image: 'assets/spaghetti_and_meatballs.jpg',    servings: 4,      ingredients: [
        Ingredient( measure: 'box',name: 'Spaghetti', quantity: 1,),      Ingredient(quantity: 4, measure: '',name: 'Frozen Meatballs',),      Ingredient(quantity:0.5,measure: 'jar', name:'sauce',),    ],  ),  Recipe(
        name: 'Tomato Soup',    image: 'assets/tomato_soup.jpg',    servings:2,    ingredients: [
        Ingredient(quantity:1, measure:'can', name:'Tomato Soup',),    ],  ),  Recipe(
        name: 'Grilled Cheese',    image: 'assets/grilled_cheese.jpg',    servings: 1,    ingredients: [
        Ingredient(quantity:2,measure: 'slices',name: 'Cheese'),      Ingredient(quantity:2, measure:'slices', name:'Bread'),    ],  ),  Recipe(
        name: 'Chocolate Chip Cookies',    image: 'assets/chocolate_chip_cookies.jpg',    servings: 24,    ingredients:[
        Ingredient(quantity :4, measure:'cups', name:'flour'),      Ingredient(quantity:2, measure:'cups', name:'sugar'),      Ingredient(quantity:0.5, measure:'cups',name: 'chocolate chips'),    ],  ),  Recipe(
        name: 'Taco Salad',    image: 'assets/taco-salad.jpg',    servings: 1,    ingredients:[
        Ingredient(quantity:3,measure: 'oz', name:  'taco meat'),      Ingredient(quantity:0.5, measure:'cup', name:'cheese'),      Ingredient(quantity:0.25, measure:'cup', name:'chopped tomatoes'),    ],  ),  Recipe(
        name: 'Hawaiian Pizza',    image: 'assets/hawaiian_pizza.jpg',    servings: 4,    ingredients: [
        Ingredient(quantity: 1,measure: 'item',name: 'pizza'),      Ingredient(quantity:1,measure: 'cup', name:'pineapple'),    ],  ),];

}
class Ingredient{
  final double quantity;
  final String measure;
  final String name;
  Ingredient({
    required this.quantity,
    required this.measure,
    required this.name,
  } );

}