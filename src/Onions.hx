package ;
class Onions implements Food {
    public function new() {
    }

    public function prepare():Void {
        trace("dicing");
        Sys.sleep(3);

    }

    public function getContents():Food {
        return this;
    }
}
