class ImageComponent {
  String? getImageComponent(String component) {
    switch (component) {
      case 'Kipas':
        return 'assets/img/fan.png';
      case 'Lampu Tamu':
        return 'assets/img/floor-lamp.png';
      case 'Lampu Teras':
        return 'assets/img/lamp.png';
      case 'Setrika':
        return 'assets/img/iron.png';
      case 'Pagar':
        return 'assets/img/fence.png';
      case 'Pintu':
        return 'assets/img/door.png';
    }
  }

  String getComponent(Component name) {
    switch (name) {
      case Component.kipas:
        return 'Kipas';
      case Component.lampu_tamu:
        return 'Lampu Tamu';
      case Component.lampu_teras:
        return 'Lampu Teras';
      case Component.setrika:
        return 'Setrika';
      case Component.pagar:
        return 'Pagar';
      case Component.pintu:
        return 'Pintu';
    }
  }
}

enum Component { pintu, pagar, kipas, setrika, lampu_teras, lampu_tamu }
