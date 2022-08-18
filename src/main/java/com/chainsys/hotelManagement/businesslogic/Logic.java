package com.chainsys.hotelManagement.businesslogic;

import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import com.chainsys.hotelManagement.model.Room;

public class Logic {
	private Logic() {
		
	}
	public static Date getInstanceDate() {
		Calendar vcalendar=Calendar.getInstance();
		String dates =  vcalendar.get(Calendar.DATE) + "/" + (vcalendar.get(Calendar.MONTH)+1) + "/" + vcalendar.get(Calendar.YEAR);
		SimpleDateFormat dateFormat=new SimpleDateFormat("dd/MM/yyyy");
		Date date=null;
		try {
			date=new java.sql.Date(dateFormat.parse(dates).getTime());
			
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return date;
	}
	public static List<Room> getAvailableroomList(List<Room>roomList){
		List<Room>availableRooList=new ArrayList<>();
		for(int i=0;i<roomList.size();i++) {
			Room room=roomList.get(i);
			if(room.getStatus().equalsIgnoreCase("available")) {
				availableRooList.add(room);
			}
		}
		return availableRooList;
	}
	
	public static LocalDate getSystemDate()
	{
		LocalDate date=LocalDate.now();
		return  date;
	}
	public static LocalDate getMinAge() {
        LocalDate date = LocalDate.now();
        return date.minusYears(18);
    }
    public static LocalDate getMaxAge() {
        LocalDate date = LocalDate.now();
        return date.minusYears(62);
    }
}
