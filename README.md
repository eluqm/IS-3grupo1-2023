![Logo_change_your_mind](https://github.com/eluqm/IS-3grupo1-2023/assets/78099176/3c332c47-94b7-4ed5-86cb-5952d1962ba8)

<h1 align="center">Change your mind</h1>
<h1 align="center">Aplicación para la mejora de la salud mental </h1>

## Problematica:


## :label: Aplicaciones Similares:

**1. Mi Yo Ahora – Mindfulness**
<p align="center">
	<img src="https://cdn.ipadizate.com/2022/11/Mi-Yo-Ahora-%E2%80%93-Mindfulness.jpg?width=1200" width=800/>
</p>

No hay nada mejor para mantener el **control de las emociones** que la meditación, y la aplicación **Mi Yo Ahora – Mindfulness** es perfecta para estas situaciones.

Esta plataforma te ayuda a **mejorar tu bienestar emocional** a través de la práctica diaria. Sus meditaciones son guiadas por profesionales, y a veces vienen acompañadas de vídeos instructivos.

Para que su **método sea más efectivo** y consigas beneficios, es recomendable usar la aplicación en espacios libres de ruidos, con la temperatura adecuada y sin distracciones.

**2. Intimind, medita en español**
<p align="center">
	<img src="https://cdn.ipadizate.com/2022/11/Intimind-medita-en-espanol.jpg?width=1200" width=800/>
</p>

**Intimid** es una aplicación con **4 programas especiales** diseñados para mejorar aspectos concretos de tu vida, especialmente aquellos que afectan tu **salud mental**.

Los programas son "Salud y estrés", "Trabaja mejor", "Relaciones personales" y "Equilibrio emocional". Una vez inicies, la plataforma te ofrecerá una introducción con 7 meditaciones completamente gratis, una práctica diaria en tan solo 10 minutos.

Su interfaz es sencilla y cómoda de usar, y a pesar de que ofrece buen contenido de autoayuda totalmente gratis, deberás suscribirte para tener acceso a todo sin límites.

**3. Mi diario de pensamientos, TCC**

<p align="center">
	<img src="https://cdn.ipadizate.com/2022/11/Mi-diario-de-pensamientos-TCC.jpg?width=1200" width=800/>
</p>

Se trata de una **terapia cognitivo conductual** donde podrás **escribir a diario** y monitorear tu estado de ánimo. En pocas palabras, es un diario cuyo propósito es mejorar y **controlar tus sentimientos y emociones**.

Un espacio libre para reflexionar sobre tus pensamientos y analizarlos con **técnicas y herramientas aprobadas** por **profesionales de la salud mental**. Al usar esta aplicación serás capaz de identificar tus emociones y trabajar para mejorarlas.

**4. Daylio Diario**

<p align="center">
	<img src="https://cdn.ipadizate.com/2022/11/Daylio-Diario.1669646647.3106.jpg?width=1200" width=800/>
</p>

**Escribir en un diario** es una **práctica muy antigua** que ayuda a **controlar las emociones** y a expresar nuestros miedos e inseguridades, por supuesto, la aplicación **Daylio Diario** es perfecta para llevar un seguimiento de tu vida y cambios de humor.

La misma es similar a un **diario privado** pero en versión digital, con ella podrás registrar tus comidas, descubrir lo que te hace feliz, establecer objetivos diarios, semanales o mensuales, crear hábitos, coleccionar logros y mucho más.

Su interfaz esta muy bien cuidada y su sistema es completamente seguro. Así que no tengas miedo de expresarte, libérate de las presiones y alcanza la felicidad.

## :label: Propósito del Proyecto

El presente proyecto tiene por objetivo brindar una **herramienta de soporte y seguimiento** de los estados emocionales para los usuarios que interactuen con la aplicación. Estos datos se recopilan mediante sencillas preguntas, escalas y comentarios que el usuario va aportando con el objetivo de formar un **perfil personalizado** único para cada usuario.

Asimismo, otro propósito del proyecto es **brindar una rutina, acorde a su perfil creado en la aplicación,** que le recomendará realizar ciertas actividades, le **proporcionará ejercicios** de meditación, le dará acceso directo a playlist musicales de relajación y brindará acceso rápido a consultas con psicólogos especialistas, nutricionistas y terapeutas para aquellos casos que requieran atención profesional.

Finalmente, el presente proyecto tiene por objetivo **brindar un chat-bot motivador** que escribirá frases relacionadas con el estado de animo del usuario motivándolo a seguir con la rutina personalizada propuesta por la aplicación o **hacer comentarios agradables sobre el usuario** en base a su estado de animo. Este utiliza palabras coincidentes dentro de su repositorio de respuestas para seleccionar y brindar una respuesta lógica frente a las preguntas/respuestas del usuario.

## :label: Tecnologias Usadas <br>
**1**. Flutter, como SDK de código abierto para desarrollar la implementación de las vistas diseñadas para el proyecto.
<p align="center">
	<img src="https://docs.flutter.dev/assets/images/flutter-logo-sharing.png" width=800>
</p>

**2**. CMake como herramienta de construcción automática para compilar, debugar y testear la aplicación a nivel de componentes e integración.
<p align="center">
	<img src="https://blog.desdelinux.net/wp-content/uploads/2019/07/cmake.jpg" width=800/>
</p>

**3.** Dart Y C++ como lenguajes de programación para desarollar el código fuente y la lógica detras de las vistas en Android y Windows.
<p align="center">
	<img src="https://miro.medium.com/v2/resize:fit:800/1*W0kCy2dvS3mTAQkTpW4PuQ.jpeg" width=800/>
</p>

**4.** Swift como lenguaje de programación para desarrollar el código fuente y la lógica para dispositivos iOS.
<p align="center">
	<img src="https://www.vectorlogo.zone/logos/swift/swift-ar21.png" width=800/>
</p>
 
## :label: Interfaz del Proyecto <br>
	


## :red_circle: Desarrollo

### Funcionalidades

Se escribio los requisitos específicos de **Change your mind** en el siguiente documento, el cual posee los requisitos funcionales(RF) y los requisitos no funcionales(RNF) de este proyecto. [Documentación Requisitos Específicos Change Your Mind](https://docs.google.com/document/d/1WBMYIa5uOBD-f-ZHr1CsGs8d6BoMfFrHwVSbD5lnAOA/edit?usp=sharing).

### Casos de Uso

#### 1. Caso de uso: Inicio de sesión

| Nombre | Código | Pre-condición | Acciones | Post-condición |
| ------ | ------ | ------------- | -------- | -------------- |
| Login | UC-001 | El usuario no ha iniciado sesión | 1. Ingresar nombre de usuario y contraseña <br> 2. Autenticar credenciales | El usuario inicia sesión correctamente y se redirige a la pantalla principal |

#### 2. Caso de uso: Calificación diaria del estado de ánimo

| Nombre | Código | Pre-condición | Acciones | Post-condición |
| ------ | ------ | ------------- | -------- | -------------- |
| Calificación diaria del estado de ánimo | UC-002 | El usuario ha iniciado sesión | 1. Seleccionar una opción para calificar el estado de ánimo <br> 2. Guardar la calificación en la base de datos | La calificación del estado de ánimo se registra correctamente y se muestra una confirmación |

#### 3. Caso de uso: Diálogo con chatbot amigable

| Nombre | Código | Pre-condición | Acciones | Post-condición |
| ------ | ------ | ------------- | -------- | -------------- |
| Diálogo con chatbot amigable | UC-003 | El usuario ha iniciado sesión | 1. Mostrar mensaje de bienvenida del chatbot <br> 2. Permitir al usuario ingresar mensajes <br> 3. Responder a las consultas del usuario de manera inteligente <br> 4. Ofrecer opciones o sugerencias relevantes durante la conversación | El chatbot interactúa con el usuario de manera amigable y proporciona respuestas relevantes |

#### 4. Caso de uso: Acceder a acceso directo de profesionales en salud mental

| Nombre | Código | Pre-condición | Acciones | Post-condición |
| ------ | ------ | ------------- | -------- | -------------- |
| Acceder a acceso directo de profesionales en salud mental | UC-004 | El usuario ha iniciado sesión | 1. Mostrar una lista de profesionales disponibles <br> 2. Permitir al usuario seleccionar un profesional <br> 3. Proporcionar información detallada sobre el profesional seleccionado <br> 4. Facilitar la comunicación entre el usuario y el profesional seleccionado | El usuario puede acceder directamente a profesionales en salud mental y comunicarse con ellos |

#### 5. Caso de uso: Generación de rutina en la aplicación en base a datos recolectados de usuario

| Nombre | Código | Pre-condición | Acciones | Post-condición |
| ------ | ------ | ------------- | -------- | -------------- |
| Generación de rutina en la aplicación en base a datos recolectados de usuario | UC-005 | El usuario ha iniciado sesión y ha proporcionado datos relevantes | 1. Recolectar y analizar datos relevantes del usuario <br> 2. Utilizar algoritmos para generar una rutina personalizada <br> 3. Mostrar la rutina generada al usuario <br> 4. Permitir al usuario realizar ajustes o personalizaciones en la rutina | Se genera una rutina personalizada basada en los datos del usuario y se muestra al usuario |

#### 6. Caso de uso: Ver estadísticas de progreso personal incremental

| Nombre | Código | Pre-condición | Acciones | Post-condición |
| ------ | ------ | ------------- | -------- | -------------- |
| Ver estadísticas de progreso personal incremental | UC-006 | El usuario ha iniciado sesión y ha registrado progresos | 1. Recopilar datos sobre el progreso del usuario <br> 2. Calcular estadísticas relevantes <br> 3. Mostrar gráficos o tablas con las estadísticas <br> 4. Actualizar las estadísticas de forma automática o mediante una acción del usuario | Las estadísticas de progreso personal se muestran al usuario de manera incremental |

### Diagrama de Casos de Uso
#### 1. Caso de uso: Inicio de sesión

![Inicio_de_sesion](https://github.com/eluqm/IS-3grupo1-2023/assets/82920949/ff919439-bcd6-4181-ba70-b01f0804bee6)

#### 2. Caso de uso: Calificación diaria del estado de ánimo

![Calificacion_diaria_del_estado_de_animo](https://github.com/eluqm/IS-3grupo1-2023/assets/82920949/f2112256-1003-4781-ad60-5869b5906889)

#### 3. Caso de uso: Diálogo con chatbot amigable

![Dialogo_con_chatbot_amigable](https://github.com/eluqm/IS-3grupo1-2023/assets/82920949/a618c1ab-f429-4db3-99dc-3994659bc0e6)

#### 4. Caso de uso: Acceder a acceso directo de profesionales en salud mental

![Acceder_a_acceso_directo_de_profesionales_en_salud_mental](https://github.com/eluqm/IS-3grupo1-2023/assets/82920949/279c58a6-f342-4f74-952e-4376b3371495)

#### 5. Caso de uso: Generación de rutina en la aplicación en base a datos recolectados de usuario

![Generación_de_rutina_en_la_aplicación_en_base_a_datos_recolectados_de_usuario](https://github.com/eluqm/IS-3grupo1-2023/assets/82920949/9aad495f-ddf2-458c-9a2c-46529c303383)

#### 6. Caso de uso: Ver estadísticas de progreso personal incremental

![Ver_estadísticas_de_progreso_personal_incremental](https://github.com/eluqm/IS-3grupo1-2023/assets/82920949/525b6985-dec5-4e2f-8e23-80b63e8500ad)

### Diseño de Modelo de Datos 


### Diseño de Arquitectura
Flutter está diseñado como un sistema extensible en capas. Existe como una serie de bibliotecas independientes, cada una de las cuales depende de la capa subyacente. Ninguna capa tiene acceso privilegiado a la capa inferior y cada parte del nivel del marco está diseñada para ser opcional y reemplazable.
![image](https://github.com/eluqm/IS-3grupo1-2023/assets/78099176/2139bff7-25a4-479a-8df2-befdb56c3690)
El siguiente diagrama ofrece una descripción general de las piezas que componen una aplicación Flutter normal generada por flutter create. Muestra dónde se encuentra Flutter Engine en esta pila, resalta los límites de la API e identifica los repositorios donde viven las piezas individuales. La siguiente leyenda aclara parte de la terminología comúnmente utilizada para describir las piezas de una aplicación Flutter.
![Screenshot 2023-06-13 062717](https://github.com/eluqm/IS-3grupo1-2023/assets/78099176/566dc7e5-49ca-42a5-8b37-44a4cca4e94a)

# **Estilos de Programación**

## 1. Estilo de programación orientada a objetos (OOP)
En Flutter, se sigue ampliamente el paradigma de programación orientada a objetos. Esto implica organizar el código en clases, objetos y jerarquías de herencia. Los elementos clave de este estilo incluyen:

- Clases y objetos bien definidos para representar componentes, pantallas, widgets, etc.
- Encapsulación para ocultar detalles de implementación y promover la reutilización de código.
- Herencia y polimorfismo para crear relaciones jerárquicas entre clases y permitir la sustitución de objetos.

## 2. Patrón de diseño MVC (Modelo-Vista-Controlador)
El patrón de diseño Modelo-Vista-Controlador es comúnmente utilizado en el desarrollo de aplicaciones Flutter. Este patrón separa la lógica de la aplicación en tres componentes principales:

- **Modelo:** Representa los datos y la lógica relacionada con los datos.
- **Vista:** Se encarga de la presentación de la interfaz de usuario y la interacción con el usuario.
- **Controlador:** Actúa como intermediario entre el modelo y la vista, gestionando la lógica de la aplicación y coordinando las interacciones entre ambos.

Este enfoque promueve la separación de preocupaciones y facilita el mantenimiento y la evolución del código.

## 3. Programación reactiva (Reactive Programming)
La programación reactiva es un estilo de programación que se enfoca en la propagación de cambios y eventos en un sistema. En Flutter, esto se logra utilizando la biblioteca "RxDart" y el patrón de diseño BLoC (Business Logic Component). Los aspectos clave de este estilo son:

- Flujos de datos (streams) para propagar y reaccionar a eventos y cambios.
- Transformaciones y operaciones de datos usando operadores como `map`, `filter`, `merge`, etc.
- Composición de flujos para crear flujos más complejos.
- Reactividad y respuesta a eventos en tiempo real.

## 4. Programación funcional
La programación funcional es un enfoque en el cual el programa se construye utilizando funciones puras y evita el estado mutable y los efectos secundarios. Aunque Flutter es principalmente orientado a objetos, puedes aprovechar conceptos de programación funcional, como:

- Funciones de orden superior que pueden recibir funciones como argumentos o devolver funciones.
- Inmutabilidad, evitando cambios directos en objetos y utilizando operaciones inmutables.
- Composición de funciones para crear transformaciones y operaciones más complejas.
- Uso de expresiones lambda (funciones anónimas) para escribir código más conciso.

## 1. Declared-Intentions.

### *Restricciones*

## 2. Plugins.

### *Restricciones* 

## 3. Dataspaces.

### *Restricciones*

 ## 4. Resful.
### *Restricciones*

## 5. Pipeline.


# **Concepto CRUD aplicado**
CRUD hace referencia a un acrónimo en el que se reúnen las primeras letras de las cuatro operaciones fundamentales de aplicaciones persistentes en sistemas de bases de datos:
### Create (Crear registros)
### Read bzw. Retrieve (Leer registros)
### Update (Actualizar registros)
### Delete bzw. Destroy (Borrar registros)
En pocas palabras, CRUD resume las funciones requeridas por un usuario para crear y gestionar datos. Varios procesos de gestión de datos están basados en CRUD, en los que dichas operaciones están específicamente adaptadas a los requisitos del sistema y de usuario, ya sea para la gestión de bases de datos o para el uso de aplicaciones.
# **Prácticas de Código Legible**

## *1. Agrupación de código.*
   
## *2. Se Utilizo el mismo vocabulario para el mismo tipo de variable*

## *3. Identacion correspondiente* <br>

## *4. Poner en mayúscula las palabras especiales de SQL*
    
## *5. Cada función realiza solo realiza una tarea*
   
## *6. Los nombres de las funciones realizan lo mencionado*
   
## *7. Organización de Archivos y Carpetas.*

## *8. Evitar codigo redundante.* <br>

### 🔩Planificación de tareas de implementación en la herramienta TRELLO 🔩
Estamos utilizando la herramienta de gestion Trello. Esta herramienta es fundamental para el trabajo en equipo y la correcta organizacion y reparticion de tareas en el proyecto. Se esta dividiendo las tareas en una TODO list, las tareas en progreso y las ya finalizadas.

![trello](images/trello.PNG)


# Modelo logico de la base de datos
![modelo logico](images/modelo_logico.PNG)


### 🔩COLABORADORES🔩
<br>
<a href="https://github.com/Miguel-Deza">
    <img src="https://avatars.githubusercontent.com/u/78099176?v=4" width="50px">
</a>
Miguel Angel Deza Cuela
<br>
<a href="https://github.com/AngelAnconeyra">
    <img src="https://avatars.githubusercontent.com/u/84652181?s=400&u=164b8541b0a891ca18a127c351a750611a3647a9&v=4" width="50px">
</a>
Roy Angel Choquehuanca Anconeyra

<br>
<a href="https://github.com/MC-io">
    <img src="https://avatars.githubusercontent.com/u/87913065?v=4" width="50px">
</a>
Moises Alejandro Casaverde Aleman
<br>
<a href="https://github.com/josueSU-UNSA">
    <img src="https://i.stack.imgur.com/frlIf.png" width="50px">
</a>
Josue Gabriel Sumare Uscca
<br>
### Licencia de Flutter
<a href="https://flutter.dev/">
  <h1 align="center">
    <picture>
      <source media="(prefers-color-scheme: dark)" srcset="https://storage.googleapis.com/cms-storage-bucket/6e19fee6b47b36ca613f.png">
      <img alt="Flutter" src="https://storage.googleapis.com/cms-storage-bucket/c823e53b3a1a7b0d36a9.png">
    </picture>
  </h1>
</a>

[![codecov](https://codecov.io/gh/flutter/flutter/branch/master/graph/badge.svg?token=11yDrJU2M2)](https://codecov.io/gh/flutter/flutter)
[![CII Best Practices](https://bestpractices.coreinfrastructure.org/projects/5631/badge)](https://bestpractices.coreinfrastructure.org/projects/5631)
[![OpenSSF Scorecard](https://api.securityscorecards.dev/projects/github.com/flutter/flutter/badge)](https://deps.dev/project/github/flutter%2Fflutter)
[![SLSA 1](https://slsa.dev/images/gh-badge-level1.svg)](https://slsa.dev)

Flutter es el SDK de Google para crear experiencias de usuario atractivas y rápidas para móvil, web y escritorio desde una única base de código. Flutter es utilizado por desarrolladores y organizaciones de todo el mundo, es gratuito y fuente abierta.
