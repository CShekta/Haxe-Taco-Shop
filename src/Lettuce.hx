package ;
class Lettuce implements RinsableFood {
    public function new() {
    }

    public function rinse(): Void {
        trace("rinsing");
        Sys.sleep(3);
    }

    public function prepare():Void {
        trace("chopping lettuce");
        Sys.sleep(5);
    }

    public function getContents():Food {
        return this;
    }
}
