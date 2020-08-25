class PokemonData {
  final int id;
  final String name;
  final List types;
  final int height;
  final int weight;

  PokemonData({
    this.id,
    this.name,
    this.types,
    this.height,
    this.weight
  });

  factory PokemonData.fromJson(Map<String, dynamic> json){
    return PokemonData(
      id: json['id'],
      name: json['name'],
      types: json['types'],
      height: json['height'],
      weight: json['weight']
    );
  }
}