class animal {
  eating() {
    print("Eating");
  }

  walking() {
    print("walking");
  }

  running() {
    print("running");
  }
}

class Human extends animal {
  thinking() => print("thinking");
  observing() => print("observe");
}

class Bird extends Human with Timepass {
  flying() => print("Flying");
}

mixin Timepass {
  tp() => print("TP");
}

class Falco extends animal with Timepass {
  dubbing() => print("Dubb");
}

void main() {
  Bird b = Bird();
  b.tp();
}
