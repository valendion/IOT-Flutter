class ImageComponent {
  String? getImageComponent(String component) {
    switch (component) {
      case 'kipas':
        return 'assets/img/fan.png';
      case 'lampu_tamu':
        return 'assets/img/floor-lamp.png';
      case 'lampu_teras':
        return 'assets/img/lamp.png';
      case 'setrika':
        return 'assets/img/iron.png';
      case 'pagar':
        return 'assets/img/fence.png';
      case 'pintu':
        return 'assets/img/door.png';
    }
  }

  String getComponent(Component name) {
    switch (name) {
      case Component.kipas:
        return 'kipas';
      case Component.lampu_tamu:
        return 'lampu_tamu';
      case Component.lampu_teras:
        return 'lampu_teras';
      case Component.setrika:
        return 'setrika';
      case Component.pagar:
        return 'pagar';
      case Component.pintu:
        return 'pintu';
    }
  }
}

enum Component { pintu, pagar, kipas, setrika, lampu_teras, lampu_tamu }
