package com.homepage.web.serviceimpls;

import java.util.Scanner;

import com.homepage.web.services.ReservationService;

public class ReservationServiceImpl implements ReservationService {
	public static String[][] seat = new String[3][5]; // 투숙객 이름
							// 구역 나눠서 A[][] 행열. 예매된 좌석 까맣게 표시되게
							//좌석 위치값
	/*좌석 위치값이 DB에 저장될 필요는 없다. 하지만 예약번호가 생성되면 좌석 위치값+예약시간+예약자가 맵핑될 필요가 있다.
	따라서 예약 번호는 좌석 위치값+ 예약시간 + 예약자의 id 정도로 생성시키면 나중에 DB에서 불러와서
	 좌석위치값, 예약시간, 예약자를 알아보고자 할 때 
	subString ()같은 메소드를 활용하면 쉽게 얻을 수 있을 것이다.*/

	@Override
	public String checkIn(int floor, int row, String id) {
		String msg = "";
		try {
			//room = this.inputCheck(row, 1, 3);
			if (floor == 0){}
			//room = this.inputCheck(row, 1, 5);
			if (row == 0){}
			if (seat[floor][row] != null) { // 이미 이름이 있다면(예약중)
				msg = "그 방은 이미 예약중입니다";
			} else {
				seat[floor][row] = id;
				msg = id + "님 checkIn 완료 되셨습니다";
			}
		} catch (Exception ex) {
			System.out.println("ReservationServiceImpl.checkIn() 에러발생");
		}
		return msg;
	}
	@Override
	public String checkOut(int floor, int row, String id) {
		String msg="";
		
			try {
				//room = this.inputCheck(row, 1, 3);
				if (floor == 0){}
				//room = this.inputCheck(row, 1, 5);
				if (row == 0){}

				if (seat[floor][row] == null) { // 방에 이름이 없다면..
					msg = "그 방은 이미 빈방입니다.";
				} else {
					id = seat[floor][row]; // 방에 이름이 있다면 해당 배열주소
															// null처리
					seat[floor][row] = null;
					msg = id + "님 checkOut 완료 되셨습니다";
				}
			} catch (Exception ex) {
				System.out.println("ReservationServiceImpl.checkOut() 에러발생");
			}
			return msg;
	}

	@Override
	public String[][] showStatus() {
	/*	System.out.println("\n\n\t***************  호텔의 투숙상태 *****************");
		// 중첩for if문
		for (int i = 0; i < seat.length; i++) {
			for (int j = 0; j < seat[i].length; j++) {
				if (seat[i][j] == null) {
					System.out.print("" + (i + 1) + "0" + (j + 1) + "호"
							+ " □\t" + "\t");
				} else {
					System.out.print("" + (i + 1) + "0" + (j + 1) + "호"
							+ " ■\t" + seat[i][j] + "\t");
				}
			}
			System.out.println();
		}*/
		return seat;

	}

	@Override
	public void process() {
		Scanner sc = new Scanner(System.in);

		int sel = 0;
		String input;

		while (true) {
			this.showStatus(); // 체크인 상태를 무조건 보면서 입실퇴실

			try {
				System.out.print("1.투숙  2.퇴실  3.전체보기  4.종료? ");
				input = sc.nextLine();

			//	sel = this.inputCheck(input, 1, 4);
			} catch (Exception ex) {
			//	alertMsg(1); // 숫자만입력하세요
			}

			switch (sel) {
			case 1:
			//	this.checkIn(int floor, int row, String id); // checkIn.do 형태로 바꿈.
				break; // 체크인
			case 2:
			//	this.checkOut(int floor, int row, String id);
				break; // 체크아웃
			case 3:
				this.process();
				break; // 현황보기
			case 4:
			//	alertMsg(9);
				System.exit(1); // 프로그램을 종료합니다.

			}

		} // while end

	}
}