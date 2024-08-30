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
	<h1>자바스크립트 내장객체</h1>
<script type="text/javascript">
	// 자바스크립트 내장객체
	/*
		String 객체
			- 문자열을 표현하는 객체
			- property
				length
					문자열의 길이를 표현
			- method
				toUpperCase()
					대문자로 변환된 문자열을 반환한다.
				toLowerCase()
					소문자로 변환된 문자열을 반환한다.
				substr(start,length)
					start위치부터 length 길이만큼 문자열을 잘라서 반환한다.
				substring(start, end)
					start위치부터 end위치 앞까지 문자열을 잘라서 반환한다.
					end를 생략하면 start위치부터 문자열의 끝까지 잘라서 반환한다.
				split(separator)
					문자열을 지원된 구분문자로 자른다음 배열로 반환한다.					
				includes(searchValue)
					문자열에 searchValue값이 있으면 true를 반환한다.
				replace(searchValue, newValue)
					문자열의 일부분을 변경한다.
				startsWith(searchValue)
					문자열이 지정된 값으로 시작하면 true를 반환한다.
				endsWith(searchValue)
					문자열이 지정된 값으로 종료되면 true를 반환한다.
				trim()
					문자열 좌우의 공백문자가 제거된 문자열을 반환한다.
				index0f(searchValue)
					문자열에 지정된 값의 위치를 반환한다.					
				charAt(index)
					문자열에서 지정된 위치의 문자하나를 반환한다.
				
		Number 객체
			- 숫자를 표현하는 객체다. 
			- method 
				Number.isInteger(값)
					지정된 값이 정수일 때 true를 반환한다.
				Number.isNaN(값)
					지정된 값이 NaN일 때 true를 반환한다.
					예)
						Number.isNaN(10) 	-false
						Number.isNaN(0/0)	-true
				toFixed(자릿수)
					숫자를 지정된 자릿수로 반올림한다.
					예)
						let num = 5.56432
						let x = num.toFixed();
						console.log(x);		// 6
						
						let num = 5.56432
						let x = num.toFixed(2);
						console.log(x);		// 5.56
						
				
				toLocaleString()
					숫자를 세자리마다 ,가 포함된 문자열로 반환한다.
					예)
						let num = 10000000;
						let text = num.toLocaleString()
						console.log(text); 		// 10,000,000
				
		Date 객체
			- 날짜와 시간정보를 표현하는 객체다.
			- 생성자 함수
				new Date()
					시스템의 현재 날짜와 시간정보를 표현하는 Date객체를 생성
				new Date(밀리초)
					지정된 유닉스타임에 해당하는 Date객체를 생성
			- method
				getFullYear()
						년도 반환한다.
				getMonth()
					월을 반환한다.(o부터 시작하는 값)
				getDate())	
					날짜를 반환한다.
				getHourrs()
					시간을 반환한다.
				getMinutes()
					분을 반환한다
				getSeconds()
					초를 반환한다.
				getTime()
					유닉싀타임을 반환한다.
					
				toLocaleDateString
					날짜를 'yyy.mm.d'형식의 문자열로 반환한다.
				totLOcaleString()
					날짜를 'yyyy.M.d a h :m:s' 형식의 문자열로 반환한다.
		Math 객체
			- 수학계산과 관련된 기능을 제공하는 객체다.
			- 주요기능
				Math.round(값)
				Math.ceil(값)
				Math.floor(값)
				Math.abs(값)
				Math.random()
		Object 객체
			- 자바스크립트 객체를 표현하는 객체다.
			- method
				entries()
					Object.entries(객체)
						해당객체의 프로퍼티들을 전부 반환한다.
					Object.keys(객체)
						해당객체의 모든 프로퍼티이름을 반환한다.
					Object.getOwnPropertyNames(객체)
						해당객체의 모든 프로퍼티이름을 반환한다.
		ReegExp 객체	
			- 정규표현식을 표현하는 객체다.
			- 정규표현식은 지정된 패턴의 문자열을 문자열에서 검색하거나 
						   지정된 패턴의 문자열을 문자열에서 찾아서 변경하거나 
						   지정된 패턴의 문자열인지를 체크한다.
			- 정규표현식은 아이디, 비밀번호, 이름, 이메일, 전화번호, 등의
			  입력값이 유효한 형식의 입력값인지 체크할 때 주로 사용한다.
			- 정규표현식 사용하기
			  
	    JSON(JavaScript Object Notation) 객체
			- 자바스크립트의 객체 표기법을 활용한 경량의 DATA-교환 형식이다.
			- 사람이 읽고 쓰기에 용이하며, 기계가 분석하고 생성함에도 용이하다.
			- JavaScript에 포함된 후에 다른 프로그래밍 언어도 JSON을 지원한다.
			- JSON은 이상적인 DATA-교환 형식이다.
			
		+ 표기법
			* object 표기법
				- name:value 쌍들의 비순서화된 집합이다.
				- 형식
						{name: value, name:value, name:value}
					
						* name은 string타입의 값이다.(반드시 문자열)
						* value는 object, arrary, string, number, true/false, null 중 하나다.
						값이 stirng일시 반드시 쌍따옴표
				- 예시
						{"name":"홍길동","age":30,"married":false}
						{"name":"홍길동","car":{"name":"제네시스","year":2021,"price":80000000}} value로 object가옴
						{"name":"영업팀","membrs":["김유신","강감찬","이순신"]} value로 배열이옴
						{"data":"2024-08-29","ranking":[{"rank":1,"tatle":"에어리언-로물루스" },	
														{"rank":2 "title":"파이럿"},
														{"rank":3 "title":"한국이 싫어서"}]}
						
			* array 표기법
				- value들의 순서화된 콜렉션이다.
				- 형식
					[value, value, value, value, value, value]
						
						* value는 object, arrary, string, number, true/false, null 중 하나다.
				- 예시 
						["홍길동","김유신","강감찬"]
						[{"rank":1,"tatle":"에어리언-로물루스" },{"rank":2 "title":"파이럿"}]
					
		+ 값
				- string 
					* 반드시 쌍따옴표로 둘러싸인 문자들의 집합이다.
					* 예시)
						"안녕하세요"
						"홍길동"
						"\n"
						"\u4c00"
				- number
					* c나 java에서 숫자(정수,실수)를 표기할 때와 비슷하다.
					* 8진수나, 16진수를 사용할 수 없다.
					* 예시)
							14
							3.14
							-10
							1.3e10
		*/
		
		
</script>
</body>
</html>

















