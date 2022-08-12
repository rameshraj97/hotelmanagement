package com.chainsys.hotelManagement.model;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name = "reservation")
public class Reservation {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO, generator = "res_num")
	@SequenceGenerator(name = "res_num", sequenceName = "res_num", allocationSize = 1)
	@Column(name = "Res_num")
	private int reservationNumber;

	@Column(name = "Guest_id")
	private int guestId;

	/*
	 * @Column(name = "Hotel_id") private int hotelId;
	 */

	@Column(name = "Room_id")
	private int roomId;

	@Column(name = "Res_date")
	private Date reservationDate;

	@Column(name = "From_date")
	private Date fromDate;

	@Column(name = " To_date")
	private Date toDate;

	@Column(name = " No_of_persons")
	private int noOfPersons;

	@Column(name="Payment_status")
	private String paymentStatus;
	
	
	//-------------Guest
	@ManyToOne(fetch= FetchType.LAZY)
	@JoinColumn(name="Guest_id",nullable =false,insertable = false, updatable=false)
	private Guest guest;

	public Guest getGuest() {
		return guest;
	}

	public void setGuest(Guest guest) {
		this.guest = guest;
	}

	/*
	 * //---------------Hotel
	 * 
	 * @ManyToOne(fetch= FetchType.LAZY)
	 * 
	 * @JoinColumn(name="Hotel_id",nullable =false,insertable = false,
	 * updatable=false) private Hotel hotel;
	 */
	/*
	 * public Hotel getHotel() { return hotel; }
	 * 
	 * public void setHotel(Hotel hotel) { this.hotel = hotel; }
	 */

	//---------------Room
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name="Room_id",nullable =false,insertable = false, updatable=false)
	private Room room;
	
	public Room getRoom() {
		return room;
	}

	public void setRoom(Room room) {
		this.room = room;
	}
  //---------------------------
	public int getReservationNumber() {
		return reservationNumber;
	}

	public void setReservationNumber(int reservationNumber) {
		this.reservationNumber = reservationNumber;
	}

	public int getGuestId() {
		return guestId;
	}

	public void setGuestId(int guestId) {
		this.guestId = guestId;
	}

	/*
	 * public int getHotelId() { return hotelId; }
	 * 
	 * public void setHotelId(int hotelId) { this.hotelId = hotelId; }
	 */

	public int getRoomId() {
		return roomId;
	}

	public void setRoomId(int roomId) {
		this.roomId = roomId;
	}

	public Date getReservationDate() {
		return reservationDate;
	}

	public void setReservationDate(Date reservationDate) {
		this.reservationDate = reservationDate;
	}

	public Date getFromDate() {
		return fromDate;
	}

	public void setFromDate(Date fromDate) {
		this.fromDate = fromDate;
	}

	public Date getToDate() {
		return toDate;
	}

	public void setToDate(Date toDate) {
		this.toDate = toDate;
	}

	public int getNoOfPersons() {
		return noOfPersons;
	}

	public void setNoOfPersons(int noOfPersons) {
		this.noOfPersons = noOfPersons;
	}

	public String getPaymentStatus() {
		return paymentStatus;
	}

	public void setPaymentStatus(String paymentStatus) {
		this.paymentStatus = paymentStatus;
	}

	
}
