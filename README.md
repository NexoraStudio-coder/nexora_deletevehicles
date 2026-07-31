# 💜 Nexora Delete Vehicles - Advanced Vehicle Cleaner for ESX

Un script gratuito, altamente optimizado y completamente configurable que elimina los vehículos abandonados del mapa de forma automática o manual, avisando a los jugadores con una interfaz visual moderna.

---

## ✨ Características Principales

* 📊 **Optimización:** Consumo de `0.00 ms` en reposo.
* 🎨 **Interfaz de Usuario:** Banner animado y estilizado en color morado corporativo con cuenta atrás fluida.
* 🤖 **Modo Automático:** Configura un bucle de tiempo para que el script limpie el mapa solo cada ciertos minutos.
* 🛠️ **Completamente Configurable:** Modifica el comando, el rango de staff permitido y los tiempos de aviso desde el archivo `config.lua`.
* 🔒 **Seguridad Inteligente:** No elimina vehículos con conductores dentro ni vehículos de emergencia (policía/médicos) que tengan las sirenas encendidas.

---

## 📸 Demostración Visual

<img width="692" height="388" alt="Nexora Delete Vehicles 2 (1) (1)" src="https://github.com/user-attachments/assets/7fca75dc-b5f4-40f7-927a-c851d9b26421" />



🎥 **[O ver en YouTube](https://www.youtube.com/watch?v=IYnTqGU4HlE)**

---

## 🛠️ Instalación

1. Descarga el repositorio.
2. Extrae el contenido y renombra la carpeta a `nexora_deletevehicles`.
3. Sube la carpeta a tu directorio de `resources` de tu servidor FiveM.
4. Añade `ensure nexora_deletevehicles` en tu archivo `server.cfg`.
5. Configura las opciones a tu gusto en el archivo `config.lua`.

---

## ⚙️ Configuración por Defecto (`config.lua`)

```lua
Config = {}

Config.GroupRequired = 'admin'   -- Rango permitido para el comando
Config.CommandName = 'cleanveh'  -- Comando manual
Config.CountdownTime = 30        -- Duración del aviso visual (segundos)

Config.AutoClean = true          -- ¿Activar limpieza automática?
Config.AutoCleanInterval = 30    -- Intervalo de limpieza automática (segundos)
```

---

## 🌐 ¡Visita nuestra Tienda Oficial!

Este es un recurso gratuito de **Nexora Studio**. Si te gusta la calidad de nuestro código y el diseño de nuestras interfaces, te invitamos a revisar nuestros scripts premium para llevar tu servidor de ESX al siguiente nivel:

🛒 **[Visita nuestra tienda Tebex aquí](https://tienda.nexorastudio.me)**

### 🔥 Productos Destacados en nuestra Tienda:
* 🚘 **Nexora Automotive Bundle (¡Ahorra más del 20%!)**
* 📦 **Nexora Garage:** El sistema de garajes definitivo, optimizado y con NUI limpia.
* 🏪 **Nexora Dealership:** Un concesionario premium avanzado para la gestión de vehículos.

---

## 💬 Soporte y Comunidad

Si tienes problemas con la instalación, necesitas ayuda o quieres enterarte de futuros scripts gratuitos y actualizaciones, únete a nuestra comunidad:

📢 **[Únete a nuestro Servidor de Discord](https://discord.gg/VqxFZdztUp)**

---
*Desarrollado con 💜 por Nexora Studio.*
