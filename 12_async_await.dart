void main() async {
  print('Inicio del programa');

  try {
    final value = await httpGet("test");
    print(value);
  } catch (err) {
    print('Error: $err');
  }

  /*httpGet("http://test.com").then((value) {
    print(value);
  }).catchError((err) {
    print('Error: $err');
  });*/

  print('Fin del programa');
}

Future<String> httpGet(String url) async {
  await Future.delayed(const Duration(seconds: 1));
  throw 'Error en la petición http';

  //return 'Tenemos un valor de la peticion';

  /*return Future.delayed(const Duration(seconds: 1), () {
    throw 'Error en la petición http';

    // return 'Respuesta del http';
  });*/
}
