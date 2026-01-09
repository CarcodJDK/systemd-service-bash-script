# 👹 El Dimoni — Servicio en Shell Script con systemd

Proyecto práctico desarrollado en **Linux** que implementa un **script en Bash** gestionado como **servicio systemd**, capaz de arrancar automáticamente con el sistema y controlarse mediante argumentos clásicos (`start | stop | restart | status`).

📚 Proyecto académico – ASIR  
✍️ Autor: Carlos Cabrera Domingo  
🔢 Versión: 1.1  

---

## 🚀 Descripción del proyecto

**El Dimoni** es un demonio (daemon) escrito en **Shell Script** que simula el comportamiento de un servicio real en Linux.  
El script gestiona su propio estado mediante archivos de **PID** y **LOG**, y se integra con **systemd** para permitir:

- Arranque automático al iniciar el sistema
- Control total del servicio desde terminal
- Monitorización básica del estado del proceso

Este proyecto está enfocado a entender **cómo funcionan los servicios en Linux desde dentro**, sin depender de herramientas externas.

---

## ⚙️ Funcionalidades

El script acepta los siguientes argumentos:

- `start`  
  - Arranca el servicio
  - Registra el inicio en un archivo `.log`
  - Escribe periódicamente *"Estoy vivo"* cada 2 segundos
  - Evita arranques duplicados

- `stop`  
  - Detiene el servicio
  - Mata el proceso usando su PID
  - Elimina el archivo `.pid`
  - Registra la detención en el log

- `restart`  
  - Detiene y vuelve a arrancar el servicio

- `status`  
  - Indica si el servicio está arrancado o detenido

También gestiona **errores comunes**, como:
- Argumentos inválidos
- Ausencia de argumentos
- Intentar parar un servicio que no está activo

---

## 🗂️ Estructura de archivos

```bash
/usr/local/bin/dimoni.sh      # Script principal
/etc/systemd/system/dimoni.service  # Servicio systemd
/home/carlos/dimoni.log       # Archivo de logs
/home/carlos/dimoni.pid       # PID del proceso

--Como usarlo:
Mover a -->
sudo mv dimoni.sh /usr/local/bin/
sudo chmod 700 /usr/local/bin/dimoni.sh
Activarlo
sudo systemctl daemon-reload
sudo systemctl enable dimoni.service
sudo systemctl start dimoni.service
