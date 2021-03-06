<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="ui/css/start_form_style.css">
  <title>Вхід в систему</title>
</head>
<body>

<div class="user">
  <header class="user__header">
    <h1 class="user__title">Вхід в систему</h1>
  </header>

  <form class="form" action="loginServlet" method="POST">

    <div class="form__group">
      <input type="email" placeholder="Email" class="form__input" name="email" required>
    </div>

    <div class="form__group">
      <input type="password" placeholder="Пароль" class="form__input" name="pass" required>
    </div>

    <button class="btn" type="submit">Ввійти</button>

    <div class="link">
      <a href="sign_up.jsp">Створити профіль хворого</a>
    </div>
  </form>
</div>

</body>
</html>