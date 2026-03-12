# 🚀 Despliegue de Owncast en Railway

Sigue estos pasos finales para poner tu plataforma de live en línea:

## 1. Crear un Repositorio en GitHub
1. Crea un repo nuevo llamado `jonnytrader-live-server` (o el nombre que quieras).
2. Sube el contenido de esta carpeta (`Dockerfile` y `railway.json`).

## 2. Configurar en Railway
1. Ve a [Railway](https://railway.app/new).
2. Selecciona **"Deploy from GitHub repo"** y elige tu repo.
3. **CONFIGURACIÓN CRUCIAL (Persistencia):**
   * Una vez creado el proyecto, ve al servicio de Owncast.
   * Ve a la pestaña **Settings**.
   * Busca **Volumes** y añade uno nuevo.
   * **Mount Path:** `/app/data` (Si no haces esto, tus configuraciones se borrarán al reiniciar).
4. **Networking:**
   * Railway te dará una URL pública para la web (ej: `https://...up.railway.app`).
   * Para OBS, busca la sección **TCP Proxy** o **Ports** para ver la URL de RTMP externa (puerto 1935).

## 3. Acceder al Panel de Admin
1. Entra a `https://tu-url-de-railway.app/admin`.
2. Usuario: `admin`
3. Contrasena: `abc12345` (Cambiala de inmediato en el panel).

## 4. Configurar en OBS
* **Servidor (Servicio Personalizado):** `rtmp://TU-PROXY-EXTERNAL-RAILWAY/live`
* **Stream Key:** La que generes en el panel de admin de Owncast.

---
¡Eso es todo! El sistema ya está listo para recibir tu señal.
