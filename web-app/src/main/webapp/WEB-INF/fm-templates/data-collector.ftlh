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
            border-color: grey;
            box-shadow: 5px 5px 10px;

        }

        #data-image {
            padding-top: 15%;
        }

        .navbar-brand#navbar-registration {
            font-family: Impact, Charcoal, sans-serif;
            font-size: 2.5em;
        }

        #information {
            padding-bottom: 3%;
            color: #C21807;
        }

    </style>


    <title>Statystyki zadań wykonanych</title>

</head>
<body>
<div id="total">

    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <a class="navbar-brand" id="navbar-registration"
           href="/motivational_system-1.0-SNAPSHOT/statystyki-uzupelnianie">
            IRIS
        </a>
        <div class="collapse navbar-collapse" id="navbarSupportedContent" style="font-size: 1.0em; color: white">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item">
                    <a class="nav-link active" href="/motivational_system-1.0-SNAPSHOT/statystyki-uzupelnianie">
                        UZUPEŁNIANIE STATYSTYK</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/motivational_system-1.0-SNAPSHOT/modyfikacja-zlecenia">MODYFIKACJA
                        ZLECENIA</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">MOJE ZLECENIA - STATYSTYKI</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/motivational_system-1.0-SNAPSHOT/akceptacja-uprawnień">AKCEPTACJA
                        UPRAWNIEŃ</a>
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
        <img src=${data_collector} alt="elements" width=80% id="data-image"/>

    </div>

    <form id="collector-form" method="post" action="/motivational_system-1.0-SNAPSHOT/statystyki-uzupelnianie">
        <div id="information">Pola oznaczone gwiazdką muszą zostać uzupełnione</div>
        <div class="form-row">
            <div class="col-md-4 mb-3">
                <label for="validationDefault01">*Źródło</label>
                <select id="validationDefault01" class="form-control" name="source" required>
                    <option></option>
                    <option>AUDANET</option>
                    <option>EGIDA</option>
                    <option>SLS</option>
                    <option>INNE</option>
                </select>
            </div>
            <div class="col-md-4 mb-3">
                <label for="validationDefault02">*Numer szkody</label>
                <input type="text" class="form-control" id="validationDefault02" placeholder="Numer szkody" required
                       name="claim">
            </div>
            <div class="col-md-4 mb-3">
                <label for="dateValidation">*Data wpływu</label>
                <div class="input-group">
                    <input type="date"
                           placeholder="YYYY-MM-DD" required
                           pattern="(?:19|20)[0-9]{2}-(?:(?:0[1-9]|1[0-2])-(?:0[1-9]|1[0-9]|2[0-9])|(?:(?!02)(?:0[1-9]|1[0-2])-(?:30))|(?:(?:0[13578]|1[02])-31))"
                           class="form-control" id="dateValidation" placeholder="Data wpływu" required
                           name="transfer-date">
                </div>
            </div>
        </div>
        <div class="form-row">
            <div class="col-md-4 mb-2">
                <label for="validationDefault03">*Rodzaj</label>
                <select id="validationDefault03" class="form-control" required name="type" onclick="myFunction()">
                    <option></option>
                    <option>DECYZJA</option>
                    <option value="FV">FV</option>
                    <option>GIEŁDA</option>
                    <option>IN</option>
                    <option>KA</option>
                    <option value="WK">WK</option>
                    <option>WR</option>
                    <option>WP</option>
                </select>
            </div>
            <div class="col-md-4 mb-2">
                <label for="validationDefault04" id="discount">Rabat 5%</label>
                <select id="validationDefault04" class="form-control" name="discount">
                    <option></option>
                    <option>Tak</option>
                    <option>Nie</option>
                </select>
            </div>

        </div>

        <div class="form-row">
            <div class="col-md-4 mb-3">
                <label for="validationDefault08" id="amount">Kwota roszczenia</label>
                <input type="number" class="form-control"
                       step="0.01"
                       min="0"
                       id="amount1_dane"
                       name="amount1">
            </div>
            <div class="col-md-4 mb-3">
                <label for="validationDefault02">*Kwota zatwierdzenia</label>
                <input type="number" class="form-control"
                       step="0.01"
                       min="0"
                       id="approved_dane"
                       required name="amount-approved" ">
            </div>
            <div class="col-md-4 mb-3">
                <label for="dateValidation09">Różnica kwot</label>
                <label form="dateDifference" class="form-control"
                       id="difference-dane" name="amount-difference">

            </div>
        </div>

        <div class="form-row">
            <div class="col-md-8 mb-3">
                <label for="dateValidation12">Uwagi</label>
                <textarea type="text" class="form-control" id="dateValidation12" placeholder="Uwagi"
                          name=description></textarea>
            </div>
            <div class="col-md-2 mb-3">
                <input type="checkbox" class="form-check-input" id="exampleCheck1" name="correction" disabled>
                <label class="form-check-label" for="exampleCheck1" name="correction">Korekta</label>
            </div>

        </div>

        <button class="btn btn-primary" type="submit" action="save" value="save">Zapisz</button>

    </form>

</div>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>


<script>


    function myFunction() {
        var s = document.getElementById("validationDefault03").value;
        if (s == "FV" || s == "WK") {
            var msg = '*Kwota roszczenia';
            document.getElementById("amount").textContent = msg;
            document.forms[0].elements['amount1'].required = true;
            var msg2 = '*Rabat 5%';
            document.getElementById("discount").textContent = msg2;
            document.forms[0].elements['discount'].required = true;

        } else {
            var msg2 = 'Rabat 5%';
            document.getElementById("discount").textContent = msg2;
            var msg = 'Kwota roszczenia';
            document.getElementById("amount").textContent = msg;
            document.forms[0].elements['amount1'].required = false;
            document.forms[0].elements['discount'].required = false;
        }
    }

    var el;
    var el2;
    var amount;

    function setupDate() {
        el = document.getElementById('amount1_dane');
        el2 = document.getElementById('approved_dane');
        if (el.value.length > 0 && el2.value.length > 0) {
            amount = el.value - el2.value
            document.getElementById('difference-dane').textContent = amount.toFixed(2);
            if (amount.toFixed(2) != 0 || amount.toFixed(2).length > 0) {

                document.forms[0].elements['correction'].checked = true;
            } else {
                document.forms[0].elements['correction'].checked = false;
            }


        } else {
            document.getElementById('difference-dane').textContent = '';
            document.forms[0].elements['correction'].checked = false;
        }

    }

    el = document.getElementById('amount1_dane');
    el2 = document.getElementById('approved_dane');
    el.addEventListener('blur', setupDate, false);
    el2.addEventListener('blur', setupDate, false);
</script>


</body>
</html>