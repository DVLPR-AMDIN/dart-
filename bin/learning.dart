import 'dart:collection';

List<Map<String, dynamic>> movies = [
  {
    "title": "Inception",
    "director": "Christopher Nolan",
    "year": 2010,
    "genre": "Sci-Fi",
    "rating": 8.8,
    "duration": "148 minutes",
    "language": "English",
    "budget": "160 million USD",
    "boxOffice": "829 million USD",
    "mainActor": "Leonardo DiCaprio"
  },
  {
    "title": "The Dark Knight",
    "director": "Christopher Nolan",
    "year": 2008,
    "genre": "Action",
    "rating": 9.0,
    "duration": "152 minutes",
    "language": "English",
    "budget": "185 million USD",
    "boxOffice": "1.005 billion USD",
    "mainActor": "Christian Bale"
  },
  {
    "title": "Titanic",
    "director": "James Cameron",
    "year": 1997,
    "genre": "Romance",
    "rating": 7.9,
    "duration": "195 minutes",
    "language": "English",
    "budget": "200 million USD",
    "boxOffice": "2.194 billion USD",
    "mainActor": "Kate Winslet"
  },
  {
    "title": "Avengers: Endgame",
    "director": "Anthony and Joe Russo",
    "year": 2019,
    "genre": "Superhero",
    "rating": 8.4,
    "duration": "181 minutes",
    "language": "English",
    "budget": "356 million USD",
    "boxOffice": "2.798 billion USD",
    "mainActor": "Robert Downey Jr."
  },
  {
    "title": "Parasite",
    "director": "Bong Joon-ho",
    "year": 2019,
    "genre": "Thriller",
    "rating": 8.6,
    "duration": "132 minutes",
    "language": "Korean",
    "budget": "11.4 million USD",
    "boxOffice": "263 million USD",
    "mainActor": "Song Kang-ho"
  },
  {
    "title": "The Shawshank Redemption",
    "director": "Frank Darabont",
    "year": 1994,
    "genre": "Drama",
    "rating": 9.3,
    "duration": "142 minutes",
    "language": "English",
    "budget": "25 million USD",
    "boxOffice": "73.3 million USD",
    "mainActor": "Tim Robbins"
  },
  {
    "title": "The Godfather",
    "director": "Francis Ford Coppola",
    "year": 1972,
    "genre": "Crime",
    "rating": 9.2,
    "duration": "175 minutes",
    "language": "English",
    "budget": "6 million USD",
    "boxOffice": "250 million USD",
    "mainActor": "Marlon Brando"
  },
  {
    "title": "Pulp Fiction",
    "director": "Quentin Tarantino",
    "year": 1994,
    "genre": "Crime",
    "rating": 8.9,
    "duration": "154 minutes",
    "language": "English",
    "budget": "8 million USD",
    "boxOffice": "213 million USD",
    "mainActor": "John Travolta"
  },
  {
    "title": "The Matrix",
    "director": "The Wachowskis",
    "year": 1999,
    "genre": "Sci-Fi",
    "rating": 8.7,
    "duration": "136 minutes",
    "language": "English",
    "budget": "63 million USD",
    "boxOffice": "467 million USD",
    "mainActor": "Keanu Reeves"
  },
  {
    "title": "Forrest Gump",
    "director": "Robert Zemeckis",
    "year": 1994,
    "genre": "Drama",
    "rating": 8.8,
    "duration": "142 minutes",
    "language": "English",
    "budget": "55 million USD",
    "boxOffice": "678 million USD",
    "mainActor": "Tom Hanks"
  }
];

class Movie {
  String? title;
  String? director;
  int? year;
  String? genre;
  num? rating;

  Movie.fromJson(Map<String, dynamic> slist) {
    title = slist['title'];
    director = slist['director'];
    year = slist['year'];
    genre = slist['genre'];
    rating = slist['rating'];
  }

  toJson() => {
        'title': title,
        'director': director,
        'year': year,
        'genre': genre,
        'rating': rating
      };
}

void main() {
  List<Movie> fillter = movies.map((e) => Movie.fromJson(e)).toList();
  List<Movie> newli =
      fillter.where((e) => e.genre == 'Crime' || e.genre == 'Drama').toList();
  for (Movie maan in newli) {
    print(maan.toJson());
  }
}
