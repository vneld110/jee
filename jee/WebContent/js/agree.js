/**
 * 
 * Date : 2015.06.18
 * Story : 회원 가입 시 동의 여부 체크
 */


function nochk(url){
   alert("동의하지 않으면 가입하실 수 없습니다");
   location.href= url;
}
  
var agreeChk = function () {

	var req = document.form.req.checked; /*document.form.name.*/
	var num = 0;
	if (req == true) {
		num = 1;
	}
	if (num == 1) {
		document.form.submit();
	} else {
		alert("개인정보 약관에 동의하셔야 합니다.");
	}
}
