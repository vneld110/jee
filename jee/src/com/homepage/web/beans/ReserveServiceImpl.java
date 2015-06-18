package com.homepage.web.beans;

public class ReserveServiceImpl {
	public static String[][] seat = new String[5][5];
	
	public String selectSeat(int floor, int row, String id) {
		String msg = "";
		try {
			if (floor == 0){}
			if (row == 0){}
			if (seat[floor][row] != null) { 
				msg = "이미 예약된 좌석입니다.";
			} else {
				seat[floor][row] = id;
				msg = id + "님 좌석 선택이 완료 되었습니다";
			}
		} catch (Exception ex) {
			System.out.println("ReservationServiceImpl.checkIn() 에러발생");
		}
		return msg;
	}

	public String cancleSeat(int floor, int row, String id) {
		String msg="";
		
		try {
			if (floor == 0){}
			if (row == 0){}

			if (seat[floor][row] == null) { 
				msg = "이미 취소한 좌석입니다.";
			} else {
				id = seat[floor][row]; 
				seat[floor][row] = null;
				msg = id + "님 좌석 취소가 완료 되었습니다";
			}
		} catch (Exception ex) {
			System.out.println("ReservationServiceImpl.checkOut() 에러발생");
		}
		return msg;
	}
	
}
