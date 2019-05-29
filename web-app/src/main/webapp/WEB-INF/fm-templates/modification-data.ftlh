<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"/>
    <style>
        #total {

            margin: 0;
            border: 0;
            padding: 0;
            background: linear-gradient(45deg, lightslategrey 0%, white 190%);
        }

        #collector-background {
            float: left;
            width: 30%;
            position: absolute;
            height: 100%;
            background: linear-gradient(to bottom, #343a40 0%, white 190%);
            padding-left: 4%;
            padding-top: 5%;

        }
        #collector-form {
            float: right;
            padding: 4%;
            margin: 50px 50px 50px 50px;
            width: 60%;
            border-style: double;
            border-color:grey;
            box-shadow: 5px 5px 10px;

        }
        #data-image{
            padding-top: 15%;
        }

        .navbar-brand#navbar-registration{
            font-family: Impact, Charcoal, sans-serif;
            font-size:2.5em;
        }



    </style>
    <title>Modyfikacja zlecenia</title>

</head>
<body>

<div id="total">
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <a class="navbar-brand" id="navbar-registration" href="/motivational_system-1.0-SNAPSHOT/statystyki-uzupelnianie">
            IRIS
        </a>
        <div class="collapse navbar-collapse" id="navbarSupportedContent" style="font-size: 1.0em; color: white">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item">
                    <a class="nav-link" href="/motivational_system-1.0-SNAPSHOT/statystyki-uzupelnianie"> UZUPEŁNIANIE STATYSTYK</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" href="/motivational_system-1.0-SNAPSHOT/modyfikacja-zlecenia">MODYFIKACJA ZLECENIA</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">MOJE ZLECENIA - STATYSTYKI</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/motivational_system-1.0-SNAPSHOT/akceptacja-uprawnień">AKCEPTACJA UPRAWNIEŃ</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">MODYFIKACJA UPRAWNIEŃ</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">SŁOWNIKI</a>
                </li>

            </ul>
        </div>

    </nav>
    <div id="collector-background">
        <div>
        <img src=${when} alt="elements" width=40% id="data-image"/>
        </div>

        <div>
            <img src=${where} alt="elements" width=20% id="data-image"/>
        </div>
        <div>
            <img src=${how} alt="elements" width=40% id="data-image"/>
        </div>

    </div>

    <form id="collector-form" method="post" action="/motivational_system-1.0-SNAPSHOT/modyfikacja-zlecenia">
        <div class="form-row">
            <div class="col-md-4 mb-3">
                <label for="validationDefault02">*Numer szkody</label>
                <input type="text" class="form-control" id="validationDefault02" placeholder="Numer szkody" required name="claim">
            </div>
            <div class="col-md-4 mb-3">
                <label for="dateValidation" >Data wpływu</label>
                <div class="input-group">
                    <input type="date"
                           placeholder="YYYY-MM-DD" required
                           class="form-control" id="dateValidation" placeholder="Data wpływu" required name="transfer-date" >
                </div>
            </div>
            <div class="col-md-4 mb-3">
                <label for="dateValidation" >Data wykonania</label>
                <div class="input-group">
                    <input type="date"
                           placeholder="YYYY-MM-DD" required
                           class="form-control" id="dateValidation" placeholder="Data wykonania" required name="transfer-date" >
                </div>
            </div>
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