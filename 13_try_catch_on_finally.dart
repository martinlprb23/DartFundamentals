void main() async {
  print('Inicio del programa');

  try {
    final value = await httpGet("test");
    print('Succes: $value');
  } on Exception catch (err) {
    print('Tenemos una exception $err');
  } catch (err) {
    print('Error: $err');
  } finally {
    print('Fin try catch');
  }

  print('Fin del programa');
}

Future<String> httpGet(String url) async {
  await Future.delayed(const Duration(seconds: 1));

  throw Exception('No hay parametros en el url');
  //return 'Tenemos un valor de la peticion';

  /*return Future.delayed(const Duration(seconds: 1), () {
    throw 'Error en la petición http';

    // return 'Respuesta del http';
  });*/
}
