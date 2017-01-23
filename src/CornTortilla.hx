package ;

class CornTortilla implements Tortilla {

  public function new() {
  }

  public function prepare():Void {
      trace("we are taking the tortilla from the package");
  }

  public function cook():Void {
      trace("we put the tortilla on the stove");
  }

  public function getContents():Food {
      return this;
  }

  public function fold(): Void{
      trace("folding tortilla");
  }

  public function addIngredient(food: Food): Void {
      trace("adding food: " + Type.getClassName(Type.getClass(food)));
  }
}
