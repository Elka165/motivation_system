<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <title>Rejestracja</title>

    <link rel="stylesheet" type="text/css" href="..\..\css\registration.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"/>
<style>
    #registration-begin {

    }

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
    }
    .navbar-brand#navbar-registration{
        font-family: Impact, Charcoal, sans-serif;
        font-size:2.5em;
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
            <small id="name" class="form-text text-muted">*Wszystkie pola muszą zostać uzupełnione.</small>
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
                <option>kierownik</option>
                <option>administrator</option>
            </select>
        </div>
        <div>
            <button type="submit" class="btn btn-primary" name ="action" value ="add">Zapisz</button>
        </div>

    </form>
<script>
    (function(){
        var form=document.getElementById('form');
        addEvent(form, 'submit', function (e) {
            e.preventDefault();
            var msg ='Dane zostały przesłane do administratora.';
            document.getElementById('name').textContent=msg;
        });
    }());
    function addEvent(el, event, callback){
        if('addEventListener' in el){
            el.addEventListener(event, callback, false);

        }else{
            el['e' + event + callback]=callback;
            el[event + callback]=function () {
                el['e' + event + callback](window.event);

            };
            el.attachEvent('on' + event, el[event + callback]);
        }
    }
</script>
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