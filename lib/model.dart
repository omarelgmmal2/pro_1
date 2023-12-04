class MovieData{
  late int page,totalPages,totalResults;
  late List<MovieModel> results;

  MovieData.fromJson(Map<String,dynamic> json)
  {
    page = json["page"];
    results = List.from(json["results"]).map((e) => MovieModel.fromJson(e)).toList();
    totalPages = json["total_pages"];
    totalResults = json["total_results"];
  }
}


class MovieModel{
  late bool adult;
  late String image,language,title,desc;
  late List<int> genresList;
  late int id;
  late double popularity;

  MovieModel.fromJson(Map<String,dynamic> json)
  {
    adult = json["adult"];
    image = json["backdrop_path"];
    //genresList = json["genre_ids"];
    id = json["id"];
    language = json["original_language"];
    title = json["original_title"];
    desc = json["overview"];
    popularity = double.tryParse(json["popularity"].toString())??0;
  }
}