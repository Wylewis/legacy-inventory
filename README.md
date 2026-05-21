# Legacy Inventory — Laboratorio Unidad 2

## Descripción
Aplicación Node.js desplegada automáticamente en AWS EC2 mediante un pipeline CI/CD con GitHub Actions y Terraform.

## Integrante
- **Nombre:** Diego Lewensztain Zelaya
- **Grupo:** B
- **Repositorio:** https://github.com/Wylewis/legacy-inventory

## Arquitectura
- **CI Pipeline:** Corre en rama `develop` — ejecuta pruebas y genera artefacto
- **CD Pipeline:** Corre en rama `main` — despliega infraestructura con Terraform
- **Backend Terraform:** S3 bucket `terraform-state-wylewis`
- **Instancia EC2:** `t3.micro` en `us-east-1`
- **Puerto de la app:** `3000`

## URL de la aplicación
http://54.234.55.141:3000

## Evidencias
Todas las evidencias están en la carpeta `evidencias/`
