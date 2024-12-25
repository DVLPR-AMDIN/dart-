class MovieData {
  Movie? movie;
  Cast? cast;
  MovieData({this.movie, this.cast});
  MovieData.fromJson(Map<String, dynamic> data) {
    movie = Movie.fromJson(data['movie']);
    cast = Cast.fromJson(data['cast']);
  }
  toJson() => {
        'movie': movie!.toJson(),
        'cast': cast!.toJson(),
      };
}

class Movie {
  String? title;
  String? director;
  int? releaseYear;
  String? genre;
  num? rating;

  Movie({this.director, this.genre, this.rating, this.releaseYear, this.title});
  Movie.fromJson(Map<String, dynamic> vdata) {
    title = vdata['title'];
    director = vdata['director'];
    releaseYear = vdata['releaseYear'];
    genre = vdata['genre'];
    rating = vdata['rating'];
  }

  toJson() => {
        'title': title,
        'director': director,
        'releaseYear': releaseYear,
        'genre': genre,
        'rating': rating
      };
}

class Cast {
  String? leadActor;
  String? supportingActor;
  String? actress;
  Cast({this.actress, this.leadActor, this.supportingActor});
  Cast.fromJson(Map<String, dynamic> data) {
    leadActor = data['leadActor'];
    supportingActor = data['supportingActor'];
    actress = data['actress'];
  }
  toJson() => {
        'leadActor': leadActor,
        'supportingActor': supportingActor,
        'actress': actress
      };
}

void main() {
  List<Map<String, Map<String, dynamic>>> data = [
    {
      "movie": {
        "title": "Inception",
        "director": "Christopher Nolan",
        "releaseYear": 2010,
        "genre": "Sci-Fi",
        "rating": 8.8,
      },
      "cast": {
        "leadActor": "Leonardo DiCaprio",
        "supportingActor": "Joseph Gordon-Levitt",
        "actress": "Elliot Page",
      },
      "boxOffice": {
        "budget": "160M USD",
        "gross": "836M USD",
        "profit": "676M USD",
      }
    },
    {
      "movie": {
        "title": "The Dark Knight",
        "director": "Christopher Nolan",
        "releaseYear": 2008,
        "genre": "Action",
        "rating": 9.0,
      },
      "cast": {
        "leadActor": "Christian Bale",
        "villain": "Heath Ledger",
        "supportingActor": "Aaron Eckhart",
      },
      "boxOffice": {
        "budget": "185M USD",
        "gross": "1B USD",
        "profit": "815M USD",
      }
    },
    {
      "movie": {
        "title": "Avatar",
        "director": "James Cameron",
        "releaseYear": 2009,
        "genre": "Sci-Fi",
        "rating": 7.9,
      },
      "cast": {
        "leadActor": "Sam Worthington",
        "actress": "Zoe Saldana",
        "antagonist": "Stephen Lang",
      },
      "boxOffice": {
        "budget": "237M USD",
        "gross": "2.9B USD",
        "profit": "2.7B USD",
      }
    },
    {
      "movie": {
        "title": "Titanic",
        "director": "James Cameron",
        "releaseYear": 1997,
        "genre": "Romance",
        "rating": 7.8,
      },
      "cast": {
        "leadActor": "Leonardo DiCaprio",
        "actress": "Kate Winslet",
        "supportingActor": "Billy Zane",
      },
      "boxOffice": {
        "budget": "200M USD",
        "gross": "2.2B USD",
        "profit": "2B USD",
      }
    },
    {
      "movie": {
        "title": "Avengers: Endgame",
        "director": "Anthony and Joe Russo",
        "releaseYear": 2019,
        "genre": "Action",
        "rating": 8.4,
      },
      "cast": {
        "leadActor": "Robert Downey Jr.",
        "supportingActor1": "Chris Evans",
        "actress": "Chris Hemsworth",
      },
      "boxOffice": {
        "budget": "356M USD",
        "gross": "2.79B USD",
        "profit": "2.43B USD",
      }
    }
  ];
  List<MovieData> moniesModel = data.map((e) => MovieData.fromJson(e)).toList();
  //moniesModel.forEach((e) => print(e.movie!.toJson()));
  print(moniesModel[2].movie!.toJson());
}


// class Movie {
//   String? title;
//   String? director;
//   int? releaseYear;
//   String? genre;
//   num? rating;

//   Movie.fromJson(Map<String, dynamic> mov) {
//     title = mov['title'];
//     director = mov['director'];
//     releaseYear = mov['releaseYear'];
//     genre = mov['genre'];
//     rating = mov['rating'];
//   }
// }

// class Cast {
//   String? leadActor;
//   String? supportingActor;
//   String? actress;
// }



// {
//   "movie": {
//     "title": "Inception",
//     "director": "Christopher Nolan",
//     "releaseYear": 2010,
//     "genre": "Sci-Fi",
//     "rating": 8.8,
//   },
//   "cast": {
//     "leadActor": "Leonardo DiCaprio",
//     "supportingActor": "Joseph Gordon-Levitt",
//     "actress": "Elliot Page",
//   },
//   "boxOffice": {
//     "budget": "160M USD",
//     "gross": "836M USD",
//     "profit": "676M USD",
//   }
// },

