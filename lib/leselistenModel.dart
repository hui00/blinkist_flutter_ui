class LeseListenModel {
  String image;
  String title;
  String subtitle;
  int amountTitle;

  LeseListenModel({
    this.image,
    this.title,
    this.subtitle,
    this.amountTitle,
  });

  static List<LeseListenModel> allModel = <LeseListenModel>[
    LeseListenModel(
        title: "Amazon Charts: Best Books of the Month",
        subtitle: "The Top 10 Most Sold & Most Read Books of the Month",
        amountTitle: 10,
        image: "assets/amazon.png"),
    LeseListenModel(
        title: "Top 13 Books Recommended on the Tim Ferriss Show",
        subtitle: "This list will provide you with...",
        amountTitle: 13,
        image: "assets/timferris.jpeg"),
    LeseListenModel(
      title: "Start a morning routine",
      subtitle:
          "Seize the morning hours and make them your with these handpcked recommendatioFFF",
      amountTitle: 7,
      image: "assets/morning.jpeg",
    ),
    LeseListenModel(
      title: "Jen Sincero's Badass",
      subtitle: "Jen Sinverio, #1 New York Times bestselling author, sucFFF",
      amountTitle: 13,
      image: "assets/badass.jpeg",
    )
  ];
}
