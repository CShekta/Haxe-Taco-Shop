package ;
class Lettuce implements RinsableFood {
    public function new() {
    }

    public function rinse(): Void {
        trace("rinsing");
    }

    public function prepare():Void {
        trace("chopping lettuce");
    }

    public function getContents():Food {
        return this;
    }
}
