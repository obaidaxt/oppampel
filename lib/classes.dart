class Lamp {
  var counter;
  Lamp(this.counter);
  String lampState = "";
  List<bool> lamps = [];
  List lampsStates = ["red", "redYellow", "green", "yellow"];

  void click() {
    if (counter > 3) {
      counter = 0;
    }
    print(counter);
    lampState = lampsStates[counter];
    counter++;
    print(counter);
  }
}
