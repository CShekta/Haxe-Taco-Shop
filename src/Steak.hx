package ;
class Steak implements CookableFood {
    public function new() {
    }

    public function cook():Void {
        trace("pan frying the steak");
        Sys.sleep(5);

    }

    public function prepare():Void {
        trace("cutting up the steak");
        Sys.sleep(3);

    }

    public function getContents():Food {
        return this;
    }
}
