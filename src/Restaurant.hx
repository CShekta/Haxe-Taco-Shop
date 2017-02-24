package;
import cpp.vm.Thread;

class Restaurant {

  public function new() {
    // var chef: Chef = new TacoChef();
    //
    // var t: Tortilla = new CornTortilla();
    // var s: CookableFood = new Steak();
    // var l: RinsableFood = new Lettuce();
    // var o: Food = new Onions();
    //
    // chef.giveIngredient(t);
    // chef.giveIngredient(s);
    // chef.giveIngredient(l);
    // chef.giveIngredient(o);
    //
    // chef.work();

    var otherThread: Thread = Thread.create(threadCreated);
    // trace(Thread.current.sendMessage('foo'));
    // trace(Thread.readMessage(true));
    otherThread.sendMessage(Thread.current());
    var childThread:Thread = Thread.readMessage(true);
    trace(otherThread == childThread);

    while (true) {

    }




  }

  public function threadCreated() {
    trace("thread created!");
    var mainThread:Thread = Thread.readMessage(true);
    trace(Std.is(mainThread, Thread));
    trace("My message was " + mainThread);
    mainThread.sendMessage(Thread.current());

  }
}
