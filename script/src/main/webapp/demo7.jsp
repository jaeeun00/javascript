<%@ page contentType="text/html;charset=utf-8" pageEncoding="utf-8" %>
<!doctype html>
<html lang="ko">
<head>
   <meta charset="utf-8">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <title>애플리케이션</title>
   <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" crossorigin="anonymous">
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
</head>
<body>
	
	<h1>연산자</h1>
	
<script type="text/javascript">
	//  사칙연산자
	// 		덧셈연산자 : +
	// 		뺄셈연산자 : -
	// 		곱셈연산자 : *
	// 		나눗셈연산자 : /
	// 		나머지연산자 : %
	// 		거듭제곱연산자 : **
	let num1 = 3;
	let num2 = 5;
	
	console.log(num1 + num2);
	console.log(num1 - num2);
	console.log(num1 * num2);
	console.log(num1 / num2); 		// 0.6이 출력된다.
	console.log(num1 / 0); 	  		// Infinity이 출력된다
	console.log("안녕하세요" /num1) // NaN이 출력된다.
	console.log(num1 % num2);
	console.log(num1 ** num2);
	
	// * NaN은 Not a Number의 줄임말이다.
	// *  NaN은 계산 중에 오류가 발생했음을 나타내는 값이다
	// *  자바스크립트는 사칙연산과정에 올바르지 않은 값이 사용되면
	// *  오류가 발생하는 대신 NaN값을 최종결과값으로 반환한다.
	
	// 덧셈연산자의 예외적 사용
	// + 덧셈연산자의 좌항 혹은 우항에 문자열이 있으면 
	//   덧셈연산자는 두 항의 값을 이어붙인 문자열을 반환한다.
	let message = "안녕하세요";
	console.log(message + num1);		// 안녕하세요3
	console.log(num1 + num2 + message); // 8안녕하세요
	console.log(message + num1 + num2); // 안녕하세요35
	
	// 사칙연산에서 undefined, null, true, falsed
	// undefined + 1 --> NaN
	// null + 1		 --> 1
	// true + 1      --> 2
	// false + 1     --> 1
	// null은 0, true는 1 , false는 0으로 변환한 후 연산한다.
	
	// 비교 연산자
	//  >, < >=, <=, ==, !=
	//  ===, !==
		
	let value1 = "23";
	let value2 = 23;
	
	console.log(value1 == value2);		// true
	console.log(value1 === value2);		// false
	
	// == 연산자
	// 값1 == 값2의 값이 같으면 true다.(값만 비교한다.)
	// 만약 자료형이 서로 다르면 같은 자료형으로 변환한 후 비교한다.
	
	// === 연산자
	// 값1 === 값2;
	// 값1과 값2의 자료형이 같고, 값1과 값2의 값이 같으면 true다.
	
	// 자바스크립트에서 두 값이 동일한 값인지 비교할 때는 === 연산자를
	// 사용하자 
	
	console.log(value1 != value2)	// false value1과 value2가 같다
	console.log(value1 !== value2)	// true  value1과 value2가 다르다
	
	// != 연산자.
	// 값1 != 값2 값이 서로 다르면 true다.(값만 비교한다.)
	// 만약 자료형이 서로 다르면 같은 자료형으로 변환한 후 비교한다.
	// 23 != '23'에서 서로 타입은 다르지만 같은 자료형으로 변환하면 
	// 23 != 23이 된다. 따라서, 같은 값이기 때문에 false가 최종결과다
	
	// !== 연산자.
	// 값1 == 값2
	// 값1과 값2의 값과 자료형까지 고려하여 비교한다.
	
	// 문자열의 비교
	// 자바스크립트에서 문자열 비교는 == 혹은 === 연산자를 이용한다.
	console.log("안녕"==="안녕");
	console.log("안녕"==="하이");
	
	// 논리연산자
	// && || !
	
	let distance = 10000;
	let year = 2;
	
	// 운행 거리가 15000이상이거나 사용기간이 3년 이상이면 유상수리로 판정한다.
	let isPay = distance >=15000 || year >= 3;
	console.log("유상수리여부", isPay);
	
	// 자바스크립트가 논리적으로 false로 여기는 것
	// 	     false
	//		 undefined
	// 		 NaN
	// 		 null
	// 		 0
	// 		 ''
	// 자바스크립트가 논리적으로 true로 여기는 것
	//		위에 나열한 것 빼고 전부다
	// 		100    참이다.
	//		-1     참이다.
	//      ' '    참이다.
	// 		'안녕' 참이다.
	//      true   참이다
	
	23 && 12
</script>
</body>
</html>