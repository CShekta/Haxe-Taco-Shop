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
      }
    }

    for (i in ingredients) {
        i.prepare();
    }

    for (i in ingredients) {
      if (Std.is(i, CookableFood)) {
        var c: CookableFood = cast i;
        c.cook();
      }
    }
    return null;
  }

}
