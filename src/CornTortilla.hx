package ;

class CornTortilla implements Tortilla {

  public function new() {
  }

  public function prepare():Void {
      trace("we are taking the tortilla from the package");
      Sys.sleep(.5);
  }

  public function cook():Void {
      trace("we put the tortilla on the stove");
      Sys.sleep(1);

  }

  public function getContents():Food {
      return this;
  }

  public function fold(): Void{
      trace("folding tortilla");
      Sys.sleep(.5);

  }

  public function addIngredient(food: Food): Void {
      trace("adding food: " + Type.getClassName(Type.getClass(food)));
      Sys.sleep(.5);

  }
}
