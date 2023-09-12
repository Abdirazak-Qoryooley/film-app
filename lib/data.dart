class data {
  late final String image;
  late final String name;
  late final double rating;
  late final double time;

  data(this.image, this.name, this.rating, this.time);
}

List<data> getdata = [
  data('images/movie1.jpg', 'big legend', 9.8, 2.5),
  data('images/movie2.jpg', 'check', 9.9, 2.0),
  data('images/movie3.jpg', 'couple', 9.7, 2.5),
  data('images/movie4.jpg', 'don1', 9.8, 2.6),
  data('images/movie5.jpg', 'don2', 9.8, 1.5),
];

List<data> getanotherdata = [
  data('images/movie6.jpg', 'don3', 8.8, 2.5),
  data('images/movie7.jpg', 'hritik', 9.9, 2.5),
  data('images/movie8.jpg', 'lover', 9.5, 2.0),
  data('images/movie9.jpg', 'don4', 9.8, 2.6),
  data('images/movie10.jpg', 'vikram', 9.9, 1.5),
];
