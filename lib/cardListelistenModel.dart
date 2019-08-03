class CardModelListelisten {
  String name;
  String image;
  int amountTitles;

  CardModelListelisten({
    this.name,
    this.image,
    this.amountTitles,
  });

  static List<CardModelListelisten> allKategorie = <CardModelListelisten>[
    CardModelListelisten(
      image: "assets/psychologie.png",
      name: "Psychologie",
    ),
    CardModelListelisten(
      image: "assets/persoenlicheenwicklung.png",
      name: "Persönliche Entwicklung",
    ),
  ];
}
