# Instalación Local de TestLink

Esta guía te ayudará a instalar TestLink localmente en Windows.

## Opciones de Instalación

### Opción 1: Docker (Recomendado)

1. **Instalar Docker Desktop**
   - Descarga desde: https://www.docker.com/products/docker-desktop/
   - Instala y reinicia tu computadora

2. **Levantar TestLink con Docker**
   ```bash
   docker-compose up -d
   ```

3. **Acceder a TestLink**
   - Abre tu navegador en: http://localhost:8090
   - Usuario por defecto: `admin`
   - Contraseña por defecto: `admin`

### Opción 2: XAMPP (Más fácil para Windows)

1. **Instalar XAMPP**
   - Descarga desde: https://www.apachefriends.org/download.html
   - Instala con Apache, MySQL y PHP

2. **Configurar el proyecto**
   - Copia la carpeta del proyecto a `C:\xampp\htdocs\testlink`
   - Inicia Apache y MySQL desde el panel de control de XAMPP

3. **Configurar la base de datos**
   - Abre phpMyAdmin: http://localhost/phpmyadmin
   - Crea una base de datos llamada `testlink`
   - Copia `config_db.inc.php.example` a `config_db.inc.php`
   - Configura los datos de conexión en `config_db.inc.php`

4. **Acceder a TestLink**
   - Abre: http://localhost/testlink
   - Sigue el asistente de instalación

### Opción 3: WAMP

1. **Instalar WAMP**
   - Descarga desde: https://www.wampserver.com/
   - Instala el paquete completo

2. **Configurar el proyecto**
   - Copia la carpeta del proyecto a la carpeta `www` de WAMP
   - Inicia WAMP

3. **Configurar la base de datos**
   - Abre phpMyAdmin desde el menú de WAMP
   - Crea una base de datos llamada `testlink`
   - Configura `config_db.inc.php` como en la opción anterior

4. **Acceder a TestLink**
   - Abre: http://localhost/testlink
   - Sigue el asistente de instalación

## Configuración Manual

### 1. Requisitos del Sistema

- **PHP**: 7.4 o superior (recomendado 7.4.x)
- **MySQL**: 5.7.x o MariaDB 10.1.x
- **Apache**: 2.x
- **Extensiones PHP requeridas**:
  - mysqli
  - gd
  - mbstring
  - xml
  - curl
  - json

### 2. Configuración de PHP

Asegúrate de que tu `php.ini` tenga estas configuraciones:

```ini
max_input_vars = 3000
memory_limit = 256M
upload_max_filesize = 2M
post_max_size = 8M
max_execution_time = 300
```

### 3. Configuración de Base de Datos

1. Copia `config_db.inc.php.example` a `config_db.inc.php`
2. Edita `config_db.inc.php` con tus datos de conexión:

```php
$g_db_type = 'mysql';
$g_db_host = 'localhost';
$g_db_port = '3306';
$g_db_name = 'testlink';
$g_db_user = 'root';
$g_db_pass = 'tu_contraseña';
```

### 4. Permisos de Carpetas

Asegúrate de que estas carpetas tengan permisos de escritura:
- `logs/`
- `upload_area/`
- `gui/templates_c/`

## Instalación Automática

Ejecuta el script de instalación:

```bash
install_windows.bat
```

## Primer Acceso

1. Abre tu navegador en la URL correspondiente
2. Sigue el asistente de instalación
3. Crea un usuario administrador
4. ¡Listo! Ya puedes usar TestLink

## Solución de Problemas

### Error de conexión a la base de datos
- Verifica que MySQL esté ejecutándose
- Revisa los datos de conexión en `config_db.inc.php`
- Asegúrate de que la base de datos `testlink` existe

### Error de permisos
- Verifica que las carpetas `logs`, `upload_area` y `gui/templates_c` tengan permisos de escritura
- En Windows, ejecuta como administrador si es necesario

### Error de PHP
- Verifica que todas las extensiones PHP requeridas estén instaladas
- Revisa la configuración de `php.ini`

## Características de TestLink

- **Gestión de Casos de Prueba**: Crea y organiza casos de prueba
- **Planes de Prueba**: Organiza ejecuciones de pruebas
- **Reportes**: Genera reportes detallados de pruebas
- **Integración**: Se integra con herramientas como JIRA, Mantis, etc.
- **API REST**: Acceso programático a la funcionalidad

## Soporte

- **Documentación oficial**: http://www.testlink.org/
- **Foro de la comunidad**: http://forum.testlink.org/
- **GitHub**: https://github.com/TestLinkOpenSourceTRMS/testlink-code

## Licencia

TestLink es software libre bajo la licencia GPL v2.
