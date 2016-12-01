package ;
class Onions implements Food {
    public function new() {
    }

    public function rinse():Void {
    }

    public function prepare():Void {
        trace("dicing");
    }

    public function getContents():Food {
        return this;
    }
}
