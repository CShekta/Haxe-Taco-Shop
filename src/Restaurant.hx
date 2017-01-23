package;

class Restaurant {

  public function new() {
    var chef: Chef = new TacoChef();

    var t: Tortilla = new CornTortilla();
    var s: CookableFood = new Steak();
    var l: RinsableFood = new Lettuce();
    var o: Food = new Onions();

    chef.giveIngredient(t);
    chef.giveIngredient(s);
    chef.giveIngredient(l);
    chef.giveIngredient(o);

    chef.work();
  }
}
