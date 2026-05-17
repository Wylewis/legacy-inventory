const express = require('express');
const app = express();
const PORT = process.env.PORT || 5000;

app.get('/', (req, res) => {
    res.send({
        status: "ONLINE",
        modulo: "Control de Inventario (Legacy)",
        entorno: process.env.NODE_ENV || "desarrollo",
        mensaje: "Acceso concedido al stock central de almacenes."
    });
});

app.listen(PORT, () => {
    console.log(`Modulo de Inventario corriendo en puerto ${PORT}`);
});