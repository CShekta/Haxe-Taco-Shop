package ;
class Steak implements CookableFood {
    public function new() {
    }

    public function cook():Void {
        trace("pan frying the steak");
    }

    public function prepare():Void {
        trace("cutting up the steak");
    }

    public function getContents():Food {
        return this;
    }
}

