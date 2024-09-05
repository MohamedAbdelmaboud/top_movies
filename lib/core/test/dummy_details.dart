import '../../modules/movies/domain/entites/genre.dart';
import '../../modules/movies/domain/entites/movie_details.dart';
import '../../modules/movies/domain/entites/recommendation.dart';

MovieDetails movieDetailDummy = const MovieDetails(
  posterPath: '/zKpLzzX1va6gkMJiI9p3DudqChe.jpg',
  backdropPath: "/o2bgWqHsu2bZo94RgxGKfvd0PYS.jpg",
  budget: 155000000,
  status: "Released",
  tagline: "The Rise of Gru",
  voteCount: 500,
  genres: [
    Genre(name: 'Family', id: 10751),
  ],
  id: 438148,
  overview:
      "A fanboy of a supervillain supergroup known as the Vicious 6, Gru hatches a plan to become evil enough to join them, with the backup of his followers, the Minions.",
  releaseDate: "2022-06-29",
  runtime: 87,
  title: "Minions: The Rise of Gru",
  voteAverage: 7.8,
);

List<Recommendation> recommendationDummy = [
  const Recommendation(
      posterPath: "/ta17TltHGdZ5PZz6oUD3N5BRurb.jpg", id: 924482),
  const Recommendation(
      posterPath: "/ta17TltHGdZ5PZz6oUD3N5BRurb.jpg", id: 924482),
  const Recommendation(
      posterPath: "/ta17TltHGdZ5PZz6oUD3N5BRurb.jpg", id: 924482),
  const Recommendation(
      posterPath: "/ta17TltHGdZ5PZz6oUD3N5BRurb.jpg", id: 924482),
  const Recommendation(
      posterPath: "/ta17TltHGdZ5PZz6oUD3N5BRurb.jpg", id: 924482),
  const Recommendation(
      posterPath: "/ta17TltHGdZ5PZz6oUD3N5BRurb.jpg", id: 924482),
  const Recommendation(
      posterPath: "/ta17TltHGdZ5PZz6oUD3N5BRurb.jpg", id: 924482),
  const Recommendation(
      posterPath: "/ta17TltHGdZ5PZz6oUD3N5BRurb.jpg", id: 924482),
  const Recommendation(
      posterPath: "/ta17TltHGdZ5PZz6oUD3N5BRurb.jpg", id: 924482),
  const Recommendation(
      posterPath: "/ta17TltHGdZ5PZz6oUD3N5BRurb.jpg", id: 924482),
  const Recommendation(
      posterPath: "/ta17TltHGdZ5PZz6oUD3N5BRurb.jpg", id: 924482),
  const Recommendation(
      posterPath: "/ta17TltHGdZ5PZz6oUD3N5BRurb.jpg", id: 924482),
  const Recommendation(
      posterPath: "/ta17TltHGdZ5PZz6oUD3N5BRurb.jpg", id: 924482),
];
