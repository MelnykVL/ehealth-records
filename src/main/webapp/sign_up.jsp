<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="ui/css/start_form_style.css">
    <title>Створення профілю хворого</title>
</head>
<body>

<div class="user">
    <header class="user__header">
        <h2 class="user__title">Створення профілю хворого</h2>
    </header>

    <form class="form" action="signUp" method="POST">

        <div class="form__group">
            <input type="email" placeholder="Email" class="form__input" name="email" required>
        </div>

        <div class="form__group">
            <input type="password" placeholder="Пароль" class="form__input" name="password" required>
        </div>

        <div class="form__group">
            <input type="text" placeholder="Повне ім'я" class="form__input" name="full_name" required>
        </div>

        <div class="form__group">
            <input type="number" placeholder="Ваша вага (кг)" class="form__input" name="weight" required>
        </div>

        <div class="form__group">
            <input type="number" placeholder="Ваш зріст (см)" class="form__input" name="height" required>
        </div>

        <div class="form__group">
            <input type="text" placeholder="Адреса проживання (місто, вулиця будинок, квартира)" class="form__input" name="address_of_residence" required>
        </div>

        <div class="form__group form__input">
            <p class="specific_line">
                Дата народження
                <input id="datefield" type="date" name="birthday" min="1920-01-01" required style="margin-right: 35px; font-size: 14px">
            </p>
        </div>

        <div class="form__group form__input">
            <p class="specific_line">
                Професія
                <select name="select_prof" class="form-control" onchange="showfield(this.options[this.selectedIndex].value)" required style="margin-right: 35px; font-size: 14px">
                    <option value="Безробітний">Безробітний</option>
                    <option value="Студент">Студент</option>
                    <option value="Пенсіонер">Пенсіонер</option>
                    <option value="Other">Інше</option>
                </select>
            </p>
        </div>
        <div id="div1"></div>

            <div class="form__group form__input">
                <p class="specific_line">
                    Стать
                    <select name="select_sex" required style="margin-right: 35px; font-size: 14px">
                        <option value="Чоловіча">Чоловіча</option>
                        <option value="Жіноча">Жіноча</option>
                    </select>
                </p>
            </div>

        <div class="form__group form__input">
            <p class="specific_line">
                Виберіть групу крові
                <select name="select_blood_type" required style="margin-right: 35px; font-size: 14px">
                    <option value="I(0)+">I(0)+</option>
                    <option value="I(0)-">I(0)-</option>
                    <option value="II(A)+">II(A)+</option>
                    <option value="II(A)-">II(A)-</option>
                    <option value="III(B)+">III(B)+</option>
                    <option value="III(B)-">III(B)-</option>
                    <option value="IV(AB)+">IV(AB)+</option>
                    <option value="IV(AB)-">IV(AB)-</option>
                </select>
            </p>
        </div>

        <button class="btn" type="submit">Створити профіль</button>

        <div class="link">
            <a href="index.jsp">Вхід в систему</a>
        </div>

    </form>
</div>

<script type="text/javascript">
function f1(){

    var today = new Date();
    var dd = today.getDate();
    var mm = today.getMonth()+1; //January is 0!
    var yyyy = today.getFullYear();
    if(dd<10){
        dd='0'+dd
    }
    if(mm<10){
        mm='0'+mm
    }

    today = yyyy+'-'+mm+'-'+dd;
    document.getElementById("datefield").setAttribute("max", today);
    document.getElementById("datefield").setAttribute("value", today);

}

window.onload = f1;

function showfield(name){
	if(name == 'Other') {
		document.getElementById('div1').innerHTML = '<input type="text" name="profession" placeholder="Введіть назву професії" name="other" class="form__input">';
	}
	else {
		document.getElementById('div1').innerHTML='';
	}
}
</script>
</body>
</html>