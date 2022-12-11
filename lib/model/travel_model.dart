class TravelModel {
  String name;
  String location;
  String image;
  String distance;
  String temp;
  String rating;
  String description;
  String price;

  TravelModel({
    required this.name,
    required this.location,
    required this.image,
    required this.distance,
    required this.temp,
    required this.rating,
    required this.description,
    required this.price,
  });
}

// Initial values:

List<TravelModel> travelList = [
  TravelModel(
      name: "New York",
      location: "USA",
      image: "assets/images/new_york.jpg",
      distance: "2000 Km",
      temp: "29",
      rating: "9.5 / 10",
      description:
          "New York City comprises 5 boroughs sitting where the Hudson River meets the Atlantic Ocean. At its core is Manhattan, a densely populated borough that’s among the world’s major commercial, financial and cultural centers. Its iconic sites include skyscrapers such as the Empire State Building and sprawling Central Park. Broadway theater is staged in neon-lit Times Square. ― Google",
      price: "1000"),
  TravelModel(
      name: "Paris",
      location: "France",
      image: "assets/images/paris.jpg",
      distance: "1400 Km",
      temp: "20",
      rating: "8 / 10",
      description:
          "Paris, France's capital, is a major European city and a global center for art, fashion, gastronomy and culture. Its 19th-century cityscape is crisscrossed by wide boulevards and the River Seine. Beyond such landmarks as the Eiffel Tower and the 12th-century, Gothic Notre-Dame cathedral, the city is known for its cafe culture and designer boutiques along the Rue du Faubourg Saint-Honoré. ― Google",
      price: "3000"),
  TravelModel(
      name: "Rome",
      location: "Italy",
      image: "assets/images/rome.jpg",
      distance: "2600 Km",
      temp: "10",
      rating: "10 / 10",
      description:
          "Rome is the capital city of Italy. It is also the capital of the Lazio region, the centre of the Metropolitan City of Rome, and a special comune named Comune di Roma Capitale. Wikipedia",
      price: "4000"),
  TravelModel(
      name: "Berlin",
      location: "Germany",
      image: "assets/images/berlin.jpg",
      distance: "900 Km",
      temp: "30",
      rating: "8.5 / 10",
      description:
          "Berlin, Germany’s capital, dates to the 13th century. Reminders of the city's turbulent 20th-century history include its Holocaust memorial and the Berlin Wall's graffitied remains. Divided during the Cold War, its 18th-century Brandenburg Gate has become a symbol of reunification. The city's also known for its art scene and modern landmarks like the gold-colored, swoop-roofed Berliner Philharmonie, built in 1963. ― Google",
      price: "2900"),
];
