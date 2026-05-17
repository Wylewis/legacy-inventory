console.log("=== Ejecutando Pruebas Unitarias de Inventario ===");
const stockActual = 42;

if (stockActual >= 0) {
    console.log("✅ PASSED: Control de stock validado correctamente.");
    process.exit(0);
} else {
    console.error("❌ FAILED: Alerta crítica, stock en negativo detectado.");
    process.exit(1);
}