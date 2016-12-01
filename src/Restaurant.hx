package ;
class Restaurant {
    public function new() {
        var t: CookableFood = new Tortilla();
        var s: CookableFood = new Steak();
        var l: RinsableFood = new Lettuce();

        rinseFood(l);

        prepareFood(l);
        prepareFood(t);
        prepareFood(s);

        cookFood(t);
        cookFood(s);
    }

    private function cookFood(f:CookableFood):Void {
        f.cook();
        trace(f.getContents());
        trace(Type.getClass(f));
    }

    private function prepareFood(f: Food): Void {
        f.prepare();
    }

    private function rinseFood(f:RinsableFood):Void {
        f.rinse();
    }
}
