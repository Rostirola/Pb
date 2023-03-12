<%@ language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<nav class="navbar navbar-inverse">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="/">AppSorvete</a>
        </div>

        <ul class="nav navbar-nav">
            <li class="active"><a href="/">Home</a></li>
            <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Alimento <span class="caret"></span></a>
                <ul class="dropdown-menu">
                    <li><a href="#">Bebida</a></li>
                    <li><a href="#">Milkshake</a></li>
                    <li><a href="#">Sorvete</a></li>
                </ul>
            </li>
            <li><a href="#">Cliente</a></li>
            <li><a href="#">Pedido</a></li>
            <li><a href="/usuario/lista">Usuario</a></li>
        </ul>

        <ul class="nav navbar-nav navbar-right">
            <li><a href="/usuario"><span class="glyphicon glypchicon-user"></span>Sign Up</a></li>
            <li><a href="/login"><span class="glyphicon glypchicon-log-in"></span>Login</a></li>
            <li><a href="#"><span class="glyphicon glypchicon-log-out"></span>Logout</a></li>
        </ul>

    </div>
</nav>