package ;
class Tortilla implements CookableFood {

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
}
