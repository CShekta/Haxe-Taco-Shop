package ;
interface Tortilla extends CookableFood {
  function fold(): Void;

  function addIngredient(food: Food): Void;
}
