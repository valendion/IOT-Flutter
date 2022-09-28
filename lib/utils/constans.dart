const baseUrl = 'https://iot-developer-acd7a-default-rtdb.firebaseio.com';

class Constans {
  static String getImage(String imagePath) {
    return 'assets/img/$imagePath';
  }

  static String getAction(String action, String component) {
    if (action == 'true') {
      if (component == 'Pagar' || component == 'Pintu') {
        return 'Terbuka';
      } else {
        return 'Menyala';
      }
    } else {
      if (component == 'Pagar' || component == 'Pintu') {
        return 'Tertutup';
      } else {
        return 'Tidak Menyala';
      }
    }
  }
}
