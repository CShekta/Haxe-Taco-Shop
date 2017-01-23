package ;
class Taco {
    public function new() {
        var t: Tortilla = new CornTortilla();
        var s: CookableFood = new Steak();
        var l: RinsableFood = new Lettuce();
        var o: Food = new Onions();

        rinseFood(l);

        prepareFood(l);
        prepareFood(t);
        prepareFood(s);
        prepareFood(o);

        cookFood(t);
        cookFood(s);
        t.addIngredient(s);
        t.addIngredient(l);
        t.addIngredient(o);

    }

    private function cookFood(f:CookableFood):Void {
        f.cook();
    }

    private function prepareFood(f: Food): Void {
        f.prepare();
    }

    private function rinseFood(f:RinsableFood):Void {
        f.rinse();
    }
}
