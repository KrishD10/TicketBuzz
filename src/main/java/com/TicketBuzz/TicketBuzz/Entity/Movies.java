package com.TicketBuzz.TicketBuzz.Entity;

public class Movies {
	private int movieId;
	private String movieUrl;
	private String movieName;
	private String movieRating;

	public Movies(int movieId,String movieUrl, String movieName, String movieRating) {

		this.movieUrl = movieUrl;
		this.movieName = movieName;
		this.movieRating = movieRating;

	}

	public int getMovieId() {
		return movieId;
	}

	public void setMovieId(int movieId) {
		this.movieId = movieId;
	}

	public String getMovieUrl() {
		return movieUrl;
	}

	public void setMovieUrl(String movieUrl) {
		this.movieUrl = movieUrl;
	}

	public String getMovieName() {
		return movieName;
	}

	public void setMovieName(String movieName) {
		this.movieName = movieName;
	}

	public String getMovieRating() {
		return movieRating;
	}

	public void setMovieRating(String movieRating) {
		this.movieRating = movieRating;
	}

}
