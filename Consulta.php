<!DOCTYPE html>
<html lang="es-MX">

<head>
    <link rel="shortcut icon" href="../IMG/FAVICON TRANSPARENTE.png" type="image/x-icon">
    <link id="EtiquetaCSS" rel="Stylesheet" href="CSS/CSS GLOBAL - TEMA INSTITUCIONAL PUEBLA.css" Type="text/css" MEDIA="screen">
    <!--<link id="Oculta/Muestra" rel="Stylesheet" href="CSS/CSS OCULTAMIENTO.css" Type="text/css" MEDIA="screen">-->
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Servicio social - Administración</title>
</head>

<body>
    <script src="JavaScript/CambiarTema.js"></script>
    <!--Encabezado (no mover)--> <br>
    <header id="Encabezado">
        <div id="Contenedor-Encabezado">
            <div id="Contenido-Encabezado">
                <h1>Servicio social</h1> <a href="index.php"> <img id="Logo" src="../IMG/FAVICON.PNG" alt="Logo POLITIZA MX">
                </a>
                <div class="Menú-Desplegable"> <button class="Botón-Desplegar">Menú</button>
                    <div class="Contenido-Desplegable">
                        <a href="Consulta.php">Consultar productos</a>
                        <a id="CambiaTema" onclick="javascript:CambiarTema();">Cambiar tema</a>
                    </div>
                </div>
            </div>
        </div>
        <div id="Encabezado-Superior"></div>
        <div id="Encabezado-Inferior"></div>
    </header>
    <div>
        <p class="Descripción-Artículo">
            <?php
            require("Conexión.php");
            ?>
        </p>
        <p>Filtros:</p>
        <table id="TablaFiltros">
            <tr id="EncabezadosFiltros">
                <th>ID</th>
                <th>Nombre</th>
                <th>Línea o serie</th>
                <th>Modelo</th>
                <th>Barras</th>
                <th>SKU</th>
            </tr>
            <form>
                <tr id="InputsFiltros">
                    <td id="BúsquedaID">
                        <input type="number" name="CapturaID" id="CampoFiltroID" placeholder="ID" onblur="javascript:FiltroID(ModoFiltro = 'ID')" onchange="javascript:FiltroID(ModoFiltro = 'ID')">
                    </td>
                    <td>
                        <select name="CapturaNombre" id="CampoFiltroNombre" onblur="javascript:FiltroNombre(ModoFiltro = 'ID')" onchange="javascript:FiltroNombre(ModoFiltro = 'ID')">
                            <?php
                            $consulta = "SELECT `Nombre` FROM `equipos administrativos`";
                            $resultado = mysqli_query($conexión, $consulta) or die("Error en la consulta a la base de datos");
                            while ($columna = mysqli_fetch_array($resultado)) {
                                echo ("<option value='" . $columna['Nombre'] . "'>" . $columna['Nombre'] . "</option>");
                            }
                            ?>
                        </select>
                    </td>
                    <td id="BúsquedaLíneaSerie">
                        <input type="text" name="CapturaLíneaSerie" id="CampoFiltroLíneaSerie" placeholder="Línea o serie" onblur="javascript:FiltroLíneaSerie(ModoFiltro = 'LíneaSerie')" onchange="javascript:FiltroLíneaSerie(ModoFiltro = 'LíneaSerie')">
                    </td>
                    <td id="BúsquedaModelo">
                        <input type="text" name="CapturaModelo" id="CampoFiltroModelo" placeholder="Modelo del artículo" onblur="javascript:FiltroModelo(ModoFiltro = 'Modelo')" onchange="javascript:FiltroModelo(ModoFiltro = 'Modelo')">
                    </td>
                    <td id="BúsquedaBarras">
                        <input type="text" name="CapturaBarras" id="CampoFiltroBarras" placeholder="Código de barras" onblur="javascript:FiltroBarras(ModoFiltro = 'Barras')" onchange="javascript:FiltroBarras(ModoFiltro = 'Barras')">
                    </td>
                    <td id="BúsquedaSKU">
                        <input type="text" name="CapturaSKU" id="CampoFiltroSKU" placeholder="SKU" onblur="javascript:FiltroSKU(ModoFiltro = 'SKU')" onchange="javascript:FiltroSKU(ModoFiltro = 'SKU')">
                    </td>
                </tr>
        </table>
        <!--
        <input class='BotónEstándar' type='submit' value="Filtrar productos" onclick="javascript:FiltrarProductos();">
    -->
        </form>

        <button class="BotónEstándar" onclick="javascript:LimpiarFiltros();">Limpiar filtros</button>
        <br>
        <div id="DivTablaID"></div>
        <hr>

        <table id="InsertarResultados">
            <?php
            $consulta = "SELECT * FROM `equipos administrativos`";
            $resultado = mysqli_query($conexión, $consulta) or die("Error en la consulta a la base de datos");
            echo "<tr>";
            echo "<th>ID</th>";
            echo "<th>Usuario</th>";
            echo "<th>Nombre</th>";
            echo "<th>Puesto</th>";
            echo "<th>Dependencia</th>";
            echo "<th>IP</th>";
            echo "<th>Servidor</th>";
            echo "<th>Inventario</th>";
            echo "<th>Procesador</th>";
            echo "<th>Frecuencia</th>";
            echo "<th>RAM</th>";
            echo "<th>Sistema Operativo</th>";
            echo "<th>Marca</th>";
            echo "<th>Modelo</th>";
            echo "<th>ECOSYS 3145</th>";
            echo "<th>TASKalfa</th>";
            echo "<th>M5521</th>";
            echo "</tr>";
            while ($columna = mysqli_fetch_array($resultado)) {
                echo "<tr>";
                echo "<td>" . $columna['ID'] . "</td>";
                echo "<td>" . $columna['Usuario'] . "</td>";
                echo "<td>" . $columna['Nombre'] . "</td>";
                echo "<td>" . $columna['Puesto'] . "</td>";
                echo "<td>" . $columna['Dependencia'] . "</td>";
                echo "<td>" . $columna['IP'] . "</td>";
                echo "<td>" . $columna['Servidor'] . "</td>";
                echo "<td>" . $columna['Inventario'] . "</td>";
                echo "<td>" . $columna['Procesador'] . "</td>";
                echo "<td>" . $columna['Frecuencia'] . "</td>";
                echo "<td>" . $columna['RAM'] . "</td>";
                echo "<td>" . $columna['Sistema Operativo'] . "</td>";
                echo "<td>" . $columna['Marca'] . "</td>";
                echo "<td>" . $columna['Modelo'] . "</td>";
                echo "<td>" . $columna['ECOSYS 3145'] . "</td>";
                echo "<td>" . $columna['TASKalfa'] . "</td>";
                echo "<td>" . $columna['M5521'] . "</td>";
                echo "</tr>";
            }
            ?>
        </table>
    </div>
    <footer>
        <div id="RedesSociales" align="center">
            <hr id="AntesSociales">
            <script lang="JavaScript" src="../JavaScript/Redes Sociales.js"></script>
            <h3><a href="mailto:dantecc10@gmail.com" class="TítuloArtículo" id="ContactoCorreo">Contacto</a></h3>
            <img class="RedSocial" alt="Ícono de Facebook" id="Facebook" onclick="javascript:AbrirFacebook();" src="../IMG/íconoFacebook.png" />
            <img class="RedSocial" alt="Ícono de WhatsApp" id="WhatsApp" onclick="javascript:AbrirWhatsApp();" src="../IMG/íconoWhatsApp.png" />
            <img class="RedSocial" alt="Ícono de Messenger" id="Messenger" onclick="javascript:AbrirMessenger();" src="../IMG/íconoMessenger.png" />
            <img class="RedSocial" alt="Ícono de YouTube" id="YouTube" onclick="javascript:AbrirYouTube();" src="../IMG/íconoYouTube.png" />
            <img class="RedSocial" alt="Ícono de Telegram" id="Telegram" onclick="javascript:AbrirTelegram();" src="../IMG/íconoTelegram.png" />
            <img class="RedSocial" alt="Ícono de Twitter" id="Twitter" onclick="javascript:AbrirTwitter();" src="../IMG/íconoTwitter.png" />
            <img class="RedSocial" alt="Ícono de GitHub" id="GitHub" onclick="javascript:AbrirGitHub();" src="../IMG/íconoGitHub.png" />
        </div>
        <p id="copyright">Copyright © Dante Castelán Carpinteyro - <i>Führer Industries</i> - 2022</p>
    </footer>
</body>

</html>