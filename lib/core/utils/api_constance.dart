const String baseUrl = 'https://api.themoviedb.org/3/';
const String apiKey = 'd7d4876a34ea0c4687d0e36a8feff39e';
const String language = 'en-US';

String getEndpoint(String endpoint) {
  return '$baseUrl$endpoint?api_key=$apiKey&language=$language';
}

String popularMovies = getEndpoint('movie/popular');
String searchMovies = getEndpoint('search/movie');
String nowPlayingMovies = getEndpoint('movie/now_playing');
String topRatedMovies = getEndpoint('movie/top_rated');
String upcomingMovies = getEndpoint('movie/upcoming');
String getMoviesRecommendationsPath(int movieId) =>
    getEndpoint('movie/$movieId/recommendations');
String getCastPath(int movieId) => getEndpoint('movie/$movieId/credits');
String getImageUrl(String? path) => 'https://image.tmdb.org/t/p/w500$path';
String getMovieDetailsPath(int movieId) => getEndpoint('movie/$movieId');
String getTrailerPath(int movieId) => getEndpoint('movie/$movieId/videos');

String searchPath = 'search/movie';
String getSearchPath(String query) =>
    '$baseUrl$searchPath?query=$query&api_key=$apiKey&language=$language&page=1';

String defaultImage =
    'https://motivatevalmorgan.com/wp-content/uploads/2016/06/default-movie-768x1129.jpg';
/*
$baseUrl$endpoint?api_key=$apiKey&language=$language
search/movie?query=spider
https://api.themoviedb.org/3/movie/1216191?api_key=d7d4876a34ea0c4687d0e36a8feff39e&language=en-US&page=1
*/