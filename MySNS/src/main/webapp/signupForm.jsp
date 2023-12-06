<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <style>
    
        h2 {
            text-align: center;
            color: white;
        }

        body {
            font-family: 'Arial', sans-serif;
            background: url('lol.jpg')no-repeat;
            background-size: cover;
  			background-position: center;
  			position: relative;
  			
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        form {
            background-color: rgba(0, 0, 0, 0.3);
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 700px;
            height: 70vh;
        }

        table {
            width: 100%;
        }

        td {
            padding: 10px;
            color: white;
        }

        input {
            width: 100%;
            padding: 8px;
            box-sizing: border-box;
            margin-bottom: 10px;
            border-radius: 8px;
        }

        input[type="submit"] {
            background-color: rgba(0, 0, 0, 0.6);
            color: #fff;
            cursor: pointer;
            border: none;
        }

        input[type="submit"]:hover {
            transform: scale(1.1);
            transition: all 0.3s;
        }
        input[type="button"] {
            background-color: rgba(0, 0, 0, 0.6);
            color: #fff;
            cursor: pointer;
            border: none;
        }

        input[type="button"]:hover {
            transform: scale(1.1);
            transition: all 0.3s;
        }
        

        label {
            margin-right: 10px;
        }
    </style>
</head>
<script type="text/javascript">
    var isIdChecked = false;  // 아이디 중복 확인 여부를 저장하는 변수

    function id_check(id) {
        if (id == "") {
            alert("ID를 입력하세요");
            return;
        }
        url = "confirmId.jsp?id=" + id;
        window.open(url, "confirm", "width=300,height=200");
    }

    function pass_check() {
        // 아이디 중복 확인이 이루어지지 않았다면 경고 메시지를 띄우고 회원가입을 중단
        if (!isIdChecked) {
            alert("아이디 중복 확인을 해주세요.");
            return false;
        }

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
    function phone_check() {
        var phone = document.getElementsByName('phone')[0].value;
        var regex = /^01[016789]-\d{3,4}-\d{4}$/;

        if (!regex.test(phone)) {
            alert("전화번호는 '010-0000-0000' 형식으로 입력해 주세요.");
            return false;
        }

        return true;
    }
</script>

<body>

    <form action="signup.jsp" method="post">
        <table align=center>
            <tr>
                <h2>회원가입</h2>
            </tr>
            <tr>
                <td align=right>아이디&nbsp;</td>
                <td><input type="text" name="id" id="id" placeholder="Email address" required></td>
                <td> <input type="button" value="중복확인" onclick="id_check(document.getElementById('id').value)"></td>
            </tr>
            <tr>
                <td align=right>패스워드&nbsp;</td>
                <td><input type="password" name="ps" required></td>
            </tr>
            <tr>
                <td align=right>패스워드(확인)&nbsp;</td>
                <td><input type="password" name="ps2" required></td>
            </tr>
            <tr>
                <td align=right>이름&nbsp;</td>
                <td><input type="text" name="name" required></td>
            </tr>
            <tr>
                <td align=right>주소&nbsp;</td>
                <td><input type="text" name="address" id="address" placeholder="address" required></td>
            </tr>
            <tr>
                <td align=right>전화번호&nbsp;</td>
                <td><input type="text" name="phone" id="phone" placeholder="phone-number" required></td>
            </tr>
            <tr>
                <td colspan=3 align=center> 
                    <input type="submit" value="회원가입하기" onclick="return pass_check()&&phone_check()">
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
