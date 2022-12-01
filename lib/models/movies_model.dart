class MoviesModel {
  String movie_name, likes, upload_year, desc, thumbnail, genre;

  MoviesModel(this.movie_name, this.likes, this.upload_year, this.desc,
      this.thumbnail, this.genre);
}

List<MoviesModel> Movies = movieData
    .map((item) => MoviesModel(
          item['movie_name']!,
          item['likes']!,
          item['upload_year']!,
          item['desc']!,
          item['thumbnail']!,
          item['genre']!,
        ))
    .toList();

var movieData = [
  {
    "movie_name": "Joker",
    "likes": "92%",
    "upload_year": "2019",
    "desc":
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus congue aliquet lacus in efficitur. Mauris felis dui, vulputate in hendrerit quis, aliquet ac ante. Ut quam orci, ultrices sit amet turpis non, faucibus pretium turpis",
    "thumbnail": "assets/cover/joker.jpg",
    "genre": "Action"
  },
  {
    "movie_name": "Iron Man",
    "likes": "99%",
    "upload_year": "2018",
    "desc":
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus congue aliquet lacus in efficitur. Mauris felis dui, vulputate in hendrerit quis, aliquet ac ante. Ut quam orci, ultrices sit amet turpis non, faucibus pretium turpis",
    "thumbnail": "assets/cover/ironman.jpg",
    "genre": "Action"
  },
  {
    "movie_name": "Spiderman",
    "likes": "96%",
    "upload_year": "2020",
    "desc":
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus congue aliquet lacus in efficitur. Mauris felis dui, vulputate in hendrerit quis, aliquet ac ante. Ut quam orci, ultrices sit amet turpis non, faucibus pretium turpis",
    "thumbnail": "assets/cover/spiderman.jpg",
    "genre": "Action"
  },
];
