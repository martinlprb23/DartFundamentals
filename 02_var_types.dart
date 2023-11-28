void main() {
  final String pokemon = "Ditto";
  final int hp = 100;
  final bool isAlive = true;
  final List<String> abilities = ["impostor"];
  final List<String> sprites = <String>["ditto/front.png", "didtto/back.png"];

  //dynamyc == null
  dynamic errorMsg = 'Hola';
  errorMsg = true;
  errorMsg = [1, 2, 3, 4, 5, 6];
  errorMsg = {1, 2, 3, 4, 5, 6};
  errorMsg = () => true;
  errorMsg = null;

  print("""
  $pokemon
  $hp
  $isAlive
  $abilities
  $sprites
  $errorMsg
  """);
}
