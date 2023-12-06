<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	 <style>
        body {
            font-family: 'Arial', sans-serif;
            
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            color: white;
            background: url('lol.jpg')no-repeat;
  	 		background-size: cover;
  			background-position: center;

   			position: relative;
        }  
        form {
         	background-color:rgba(0, 0, 0, 0.3);
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            background-size: cover;
  			background-position: center;

   			position: relative;
            width: 700px; /* Adjusted form width */
            height: 70vh;
        }
        
          input {
            width: 100%;
            padding: 8px;
            box-sizing: border-box;
            margin-bottom: 10px;
            border-radius: 8px;
          	
        }
		input[type="submit"] {
            background-color:rgba(0, 0, 0, 0.6);
            color: #fff;
            cursor: pointer;	  
            border: none;
        }

        input[type="submit"]:hover {
             transform: scale(1.1);
             transition:all 0.3s;
             
        }

       
        h2 {
        	
            margin-bottom: 20px;
        }

        a {
            color: white;
        	 text-decoration: underline;
        }
        

      
    </style>
</head>
<script type="text/javascript">

function pass_check() {
    var ps = document.getElementsByName('ps')[0].value;
    var ps2 = document.getElementsByName('ps2')[0].value;
    var regex = /^[A-Za-z]\w*\d+\w*$/;

    if (!regex.test(ps) || ps.length < 8) {
        alert("비밀번호는 영문자로 시작하며, 숫자를 포함하고 총 길이가 8자 이상이어야 합니다.");
        return false;
    }

    if (ps != ps2) {
        alert("패스워드가 일치하지 않습니다. 다시 확인해 주세요.");
        return false;
    }

    return true;
}
</script>
</script>
<body >
	<form action="login.jsp">
	
	<table align=center>
	<tr><td colspan=2 align=center height=40><b><h2>로그인</h2></b><td></tr>
	<tr>
		<td align=right >아이디&nbsp;</td> 
		<td><input type="text" name="id"placeholder="Email address" required></td>
	</tr>
	<tr>
		<td align=right>패스워드&nbsp;</td> 
		<td><input type="password" name="ps" required></td>
	</tr>
	<tr>
		<td colspan=2 align=center height=50>
			<input type="submit" value="로그인하기">
		</td>
		
	</tr>
	<tr>
	<td  colspan=2 align=center height=60>
	<br><p>아직 회원이 아니세요?</p>
	<a href="signupForm.jsp">회원가입</a>
	</td>
	</tr>
	
	</table>
	</form>
</body>
</html>