void main() {
  print('Inicio dle programa');

  httpGet("http://test.com").then((value) {
    print(value);
  }).catchError((err) {
    print('Error: $err');
  });

  print('Fin del programa');
}

Future<String> httpGet(String url) {
  return Future.delayed(const Duration(seconds: 1), () {
    throw 'Error en la petición http';

    // return 'Respuesta del http';
  });
}
