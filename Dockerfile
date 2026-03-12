FROM owncast/owncast:latest

# Exponemos los puertos necesarios:
# 8080: Interfaz web y reproducción HLS (HTTP)
# 1935: Entrada de stream RTMP (desde OBS)
EXPOSE 8080
EXPOSE 1935

# Punto de montaje para PERSISTENCIA (Manejado por Railway Volumes)
# Ya configuraste el volumen en el panel, así que no hace falta declararlo aquí.

ENTRYPOINT ["/app/owncast"]
