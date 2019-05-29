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

        h5 {
            font-family: inherit;
            font-size: 1.2rem;
            font-weight: bold;
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

        #accept-permission {
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

        .table2 {
            font-family: Arial, Helvetica, sans-serif;
            color: #666;
            font-size: 16px;
            text-shadow: 1px 1px 0px #fff;
            background: #eaebec;
            margin: 10px;
            border: #ccc 1px solid;
            border-collapse: separate;
            width: 100%;
            -moz-border-radius: 3px;
            -webkit-border-radius: 3px;
            border-radius: 3px;


            -moz-box-shadow: 0 1px 2px #d1d1d1;
            -webkit-box-shadow: 0 1px 2px #d1d1d1;
            box-shadow: 0 1px 2px #d1d1d1;
        }


        .table2 th {
            font-weight: bold;
            padding: 21px 25px 22px 25px;
            border-top: 1px solid #fafafa;
            border-bottom: 1px solid #e0e0e0;
            border-left: 1px solid #e0e0e0;


            background: #ededed;
            background: -webkit-gradient(linear, left top, left bottom, from(#ededed), to(#ebebeb));
            background: -moz-linear-gradient(top, #ededed, #ebebeb);
        }


        .table2 th:first-child {
            text-align: left;
            padding-left: 20px;
        }


        .table2 tr:first-child th:last-child {
            -moz-border-radius-topright: 3px;
            -webkit-border-top-right-radius: 3px;
            border-top-right-radius: 3px;
        }


        .table2 tr {
            text-align: center;
            padding-left: 20px;
        }


        .table2 tr td:first-child {
            text-align: left;
            padding-left: 20px;
            border-left: 0;
        }


        .table2 tr td {
            padding: 18px;
            background-color: white;
            border-top: 1px solid #ffffff;
            border-bottom: 1px solid #e0e0e0;
            border-left: 1px solid #e0e0e0;


            background: white;
            background: -webkit-gradient(linear, left top, left bottom, from(white), to(white));
            background: -moz-linear-gradient(top, white, white);
        }


        .table2 tr:last-child td {
            border-bottom: 0;
        }


    </style>
    <title>Akceptacja uprawnień</title>

</head>
<body>

<div id="total" method="get" action="/motivational_system-1.0-SNAPSHOT/akceptacja-uprawnień">
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <a class="navbar-brand" id="navbar-registration"
           href="/motivational_system-1.0-SNAPSHOT/statystyki-uzupelnianie">
            IRIS
        </a>
        <div class="collapse navbar-collapse" id="navbarSupportedContent" style="font-size: 1.0em; color: white">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item">
                    <a class="nav-link" href="/motivational_system-1.0-SNAPSHOT/statystyki-uzupelnianie"> UZUPEŁNIANIE
                        STATYSTYK</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/motivational_system-1.0-SNAPSHOT/modyfikacja-zlecenia">MODYFIKACJA
                        ZLECENIA</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">MOJE ZLECENIA - STATYSTYKI</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" href="/motivational_system-1.0-SNAPSHOT/akceptacja-uprawnień">AKCEPTACJA
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
        <div>
            <img src=${when} alt="elements" width=40% id="data-image"/>
        </div>

    </div>
    <div id="accept-permission">
        <h5>Akceptacja uprawnień/dostępu</h5>

        <table class="table2">

            <thead>
            <tr>
                <th scope="col">login</th>
                <th scope="col">Nazwisko Imię</th>
                <th scope="col">Rodzaj uprawnień</th>
                <th scope="col">Data wysłania</th>

            </tr>
            </thead>
            <tbody>
            <#list listOfPermission as s>
                <tr>
                    <td> ${s.getLogin()} </td>
                    <td>${s.getSurnameAndName()}</td>
                    <td>${s.getTypeOfPermission()}</td>
                    <td>${s.getSendDate()}</td>

                </tr>
            </#list>
            </tbody>
        </table>
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

</div>
</body>
</html>