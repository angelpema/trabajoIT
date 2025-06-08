<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8" />
        <title>Accesos Rápidos</title>
        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
        <!-- Bootstrap Icons -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet" />
        <style>
            body {
                background: #f8f9fa;
            }
            .card {
                cursor: pointer;
                transition: transform 0.2s ease, box-shadow 0.2s ease;
                height: 160px;
                display: flex;
                flex-direction: column;
                justify-content: center;
                align-items: center;
                border-radius: 0.5rem;
            }
            .card:hover {
                transform: translateY(-6px);
                box-shadow: 0 10px 20px rgba(0,0,0,0.12);
            }
            .icon-btn {
                font-size: 2.5rem;
                color: #0d6efd;
                margin-bottom: 0.75rem;
                transition: color 0.3s ease;
            }
            .card:hover .icon-btn {
                color: #0a58ca;
            }
            h1 {
                font-weight: 700;
                color: #212529;
                margin-bottom: 2rem;
                text-align: center;
            }
            button.card {
                border: none;
                background-color: #fff;
                width: 100%;
            }
        </style>
    </head>
    <body>
        <header class="bg-white shadow-sm mb-5">
            <nav class="container navbar navbar-light">
                <a class="navbar-brand fw-bold" href="#">TPV Gestión</a>
            </nav>
        </header>

        <main class="container">

            <h1>Accesos Rápidos</h1>

            <div class="row g-4 justify-content-center">

                <!-- Botón para ir a vista de mesas -->
                <div class="col-12 col-sm-6 col-md-4">
                    <s:form action="tpvMesas" method="post" style="margin: 0;">
                        <button type="submit" class="card shadow-sm text-center">
                            <i class="bi bi-grid-3x3-gap icon-btn"></i>
                            <div class="fw-semibold fs-5">Ir a Vista de Mesas</div>
                        </button>
                    </s:form>
                </div>

                <!-- Botón para ir al panel de administración -->
                <div class="col-12 col-sm-6 col-md-4">
                    <s:form action="index" method="post" style="margin: 0;">
                        <button type="submit" class="card shadow-sm text-center">
                            <i class="bi bi-speedometer2 icon-btn"></i>
                            <div class="fw-semibold fs-5">Ir al Panel de Administración</div>
                        </button>
                    </s:form>
                </div>

            </div>
        </main>

        <footer class="footer mt-5 text-center text-muted small">
            &copy; 2025 TPV Gestión. Todos los derechos reservados.
        </footer>

        <!-- Bootstrap JS -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>
