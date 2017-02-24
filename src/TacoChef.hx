package;

class TacoChef implements Chef {
  private var ingredients: Array < Food >;

  public function new() {
    ingredients = [];
  }

  public function giveIngredient(food: Food): Void {
    trace('received ${Type.getClassName(Type.getClass(food))}');
    ingredients.push(food);
  }

  public function work(): Food {
    for (i in ingredients) {
      if (Std.is(i, RinsableFood)) {
        var r: RinsableFood = cast i;
        r.rinse();
        return r;
      }
    }

    for (i in ingredients) {
        i.prepare();
    }

    for (i in ingredients) {
      if (Std.is(i, CookableFood)) {
        var c: CookableFood = cast i;
        c.cook();
        return c;
      }
    }

    var tortilla: Tortilla = null;
    for (i in ingredients) {
      if (Std.is(i, Tortilla)) {
        tortilla = cast i;
        tortilla.fold();
        return tortilla;
      }
    }

    return null;
  }

}

//find tortillas and throw error if there isn't one
//create taco class
