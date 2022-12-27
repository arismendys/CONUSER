# Consultar usuario por servidor (CONUSER)
<p>Este programa de <b>BatchScript</b> les permite buscar a un usuario en varios servidores RDP de forma automática, 
y al encontrar el usuario en algún servidor les preguntará si desean cerrar la sesión de ese usuario en ese servidor.

Al terminar de buscar al usuario en un servidor, ya sea que lo encuentre o no, el programa continuara con el siguiente servidor en la lista.</p>

<p><b>IMPORTANTE:</b> Deben de sustituir en el código donde diga <b>NOMBRE_SERVIDOR#</b> por el nombre de cada servidor donde desean que el sistema realice la búsqueda,
o de lo contrario les dará ERROR. El sistema busca en 9 servidores en total.

Este código está escrito de manera que sea fácil de entender y modificar para cualquier usuario.</p>

<p><b>RECOMENDACIÓN:</b> Les recomiendo copiar el programa en <b>'C:\Windows\System32'</b>, para que puedan ejecutarlo en cualquier momento con solo presionar la 
<b>"Tecla de Windows(Menú de Inicio) + R"</b>,
y colocar el nombre del programa.</p>

<p>
<ul><b>VARIABLES:</b>
<li><b>ruser:</b> Almacenará el nombre del usuario que le suministres.</li>
<li><b>s#:</b> Van del s1 hasta el s9. Cada una almacenará el ID del usuario que encuentre en su servidor especifico.</li>
<li><b>RDP#:</b>Van del RDP1 hasta el RDP9. Cada una almacenará el nombre del servidor que le otorgues.</li>
</ul>
</p>
<p><b>UPDATE 27.12.22:</b> El programa ahora cuanta con una versión gráfica realizada en PowerShell Studio.

Para esta nueva versión en el arreglo <i>$servidores = @("NOMBRESERVIDOR", "NOMBRESERVIDOR", "NOMBRESERVIDOR", "NOMBRESERVIDOR", "NOMBRESERVIDOR", "NOMBRESERVIDOR", "NOMBRESERVIDOR", "NOMBRESERVIDOR")</i>, solo tendrán que sustituir <b>NOMBRESERVIDOR</b> por el nombre de cada uno de sus servidores. Deben tener pendiente que esta actualización solo está diseñada para 8 servidores.<p>
