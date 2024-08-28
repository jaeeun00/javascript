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
   <h1>제어문</h1>
   
   검색어: <input type="text" name="keyword"> <button onclick="checkField();">조회</button>
   <!-- onclick 은 이 버튼을 클릭했을 때 라는 의미이다. -->
   
<script type="text/javascript">
   // 제어문      // 자바랑 사용방법은 같고 조건식에 값자체가 올 수 있다는 점이 다르다.
   //    if문, if ~ else문, if ~ else if ~ else if ~ else문
   //    switch문 
   
   // if (조건식) {
   //       수행문;
   // }
   // * 조건식을 판정해서 true로 판정되면 블록내의 수행문을 실행한다.
   // * 조건식에는 비교연산자/논리연산자를 이용한 연산식이 위치할 수 있고,
   //    단순한 값이 위치할 수 있다.
   // * 조건식의 수행결과가 true/false로 아닌 경우 
   //    0, '', undefined, null, NaN은 false로 판정되고, 그 외는 전부 true로 판정한다.
   
   function checkField() {
      // 입력필드의 입력값 조회하기
      let keyword = document.querySelector('input[name=keyword]').value;
      
      if (keyword.trim()) {               // trim() 좌우공백을 잘라내는 놈.
         alert(`\${keyword}로 데이터를 검색합니다.`);
      } else {
         alert("검색어를 입력하세요");
      }
      
      /*
      if (keyword == "") {
         alert("검색어를 입력하세요");
      } else {
         alert(`\${keyword}로 데이터를 검색합니다.`);
      }
      */
   }
</script>   
</body>
</html>