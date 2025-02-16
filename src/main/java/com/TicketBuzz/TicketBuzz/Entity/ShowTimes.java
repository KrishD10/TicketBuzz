package com.TicketBuzz.TicketBuzz.Entity;

import java.sql.Date;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "showtimes_details")
public class ShowTimes {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "showtime_id")
	private int showtimeId;
	@Column(name = "movie_id")
	private int movieId;
	@Column(name = "theater_id")
	private int theaterId;
	@Column(name = "start_time")
	private Date startTime;
	@Column(name = "end_time")
	private Date endTime;
	@Column(name = "avaliable_seats")
	private String avaliableSeats;
	@Column(name = "created_at")
	private Date createdAt;
	@Column(name = "updated_by")
	private Date updatedBy;

	public int getShowtimeId() {
		return showtimeId;
	}

	public void setShowtimeId(int showtimeId) {
		this.showtimeId = showtimeId;
	}

	public int getMovieId() {
		return movieId;
	}

	public void setMovieId(int movieId) {
		this.movieId = movieId;
	}

	public int getTheaterId() {
		return theaterId;
	}

	public void setTheaterId(int theaterId) {
		this.theaterId = theaterId;
	}

	public Date getStartTime() {
		return startTime;
	}

	public void setStartTime(Date startTime) {
		this.startTime = startTime;
	}

	public Date getEndTime() {
		return endTime;
	}

	public void setEndTime(Date endTime) {
		this.endTime = endTime;
	}

	public String getAvaliableSeats() {
		return avaliableSeats;
	}

	public void setAvaliableSeats(String avaliableSeats) {
		this.avaliableSeats = avaliableSeats;
	}

	public Date getCreatedAt() {
		return createdAt;
	}

	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}

	public Date getUpdatedBy() {
		return updatedBy;
	}

	public void setUpdatedBy(Date updatedBy) {
		this.updatedBy = updatedBy;
	}

}
