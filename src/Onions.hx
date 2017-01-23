package ;
class Onions implements Food {
    public function new() {
    }

    public function prepare():Void {
        trace("dicing");
    }

    public function getContents():Food {
        return this;
    }
}
