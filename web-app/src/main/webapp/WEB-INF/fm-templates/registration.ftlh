<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <title>Rejestracja</title>

    <link rel="stylesheet" type="text/css" href="..\..\css\registration.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"/>
<style>
    #total {

        margin: 0;
        border: 0;
        padding: 0;
        background: linear-gradient(45deg, lightslategrey 0%, white 190%);
    }

    #form {
        float: right;
        padding: 4%;
        margin: 50px 50px 50px 50px;
        width: 40%;
        border-style: double;
        border-color:grey;
        box-shadow: 5px 5px 10px;

    }

    #registration-background {
        float: left;
        width: 50%;
        position: absolute;
        height: 100%;
        background: linear-gradient(to bottom, #343a40 0%, white 190%);
        padding-left: 4%;
        padding-top: 10%;
    }
    .navbar-brand#navbar-registration{
        font-family: Impact, Charcoal, sans-serif;
        font-size:2.5em;
    }
    .form-group#registration-begin #title-message{
        color: #C21807;
        font: bold;
    }

    .form-group#registration-begin #login{
        color: grey;
        padding-top: 2%;
        padding-bottom: 2%;
    }

</style>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <a class="navbar-brand" id="navbar-registration" href="#">
        IRIS - REJESTRACJA
    </a>

</nav>
<div id="total">

    <div id="registration-background">
        <img src=${registration} alt="car" width=77%/>

    </div>


    <form id="form" method="post" action="/motivational_system-1.0-SNAPSHOT/rejestracja" >

        <div class="form-group" id="registration-begin">
        <div id="title-message">
            <small><strong>${text}</strong></small>
        </div>

            <div id="login">${login}</div>
            <label for="name">Imię</label>
            <input type="text" class="form-control" id="exampleInputName" aria-describedby="name"
                   placeholder="imię" required name="name">

        </div>
        <div class="form-group">
            <label for="exampleInputSurname">Nazwisko</label>
            <input type="text" class="form-control" id="exampleInputSurname" placeholder="Nazwisko" required name="surname">
        </div>

        <div class="form-group">
            <label for="inputState">Uprawnienia</label>
            <select id="inputState" class="form-control" required name="permission">
                <option></option>
                <option>rzeczoznawca</option>
                <option>administrator</option>
            </select>
        </div>
        <div>
            <button type="submit" class="btn btn-primary" name ="action" value ="add">Zapisz</button>
        </div>

    </form>


    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
            integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
            crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
            integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
            crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
            integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
            crossorigin="anonymous"></script>

</div>


</body>
</html>