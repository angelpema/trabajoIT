<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8" />
        <title>Gestión TPV</title>
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
                height: 160px; /* para que todas las cards tengan igual altura */
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
                font-size: 3rem;
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
            .footer {
                margin-top: 3rem;
                text-align: center;
                color: #6c757d;
                font-size: 0.9rem;
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
            <nav class="container navbar navbar-expand-lg navbar-light">
                <a class="navbar-brand fw-bold" href="#">TPV Gestión</a>
            </nav>
        </header>

        <main class="container">

            <h1>Bienvenido a la página de gestión del TPV</h1>

            <div class="row g-4 justify-content-center">

                <div class="col-12 col-sm-6 col-md-4">
                    <s:form action="listarAlerta" style="margin: 0;">
                        <button type="submit" class="card shadow-sm text-center">
                            <i class="bi bi-exclamation-triangle-fill icon-btn"></i>
                            <div class="fw-semibold fs-5">Gestionar Alertas</div>
                        </button>
                    </s:form>
                </div>

                <div class="col-12 col-sm-6 col-md-4">
                    <s:form action="listarCamarero" style="margin: 0;">
                        <button type="submit" class="card shadow-sm text-center">
                            <i class="bi bi-person-fill icon-btn"></i>
                            <div class="fw-semibold fs-5">Gestionar Camareros</div>
                        </button>
                    </s:form>
                </div>

                <div class="col-12 col-sm-6 col-md-4">
                    <s:form action="listarCategoria" style="margin: 0;">
                        <button type="submit" class="card shadow-sm text-center">
                            <i class="bi bi-tags-fill icon-btn"></i>
                            <div class="fw-semibold fs-5">Gestionar Categorías</div>
                        </button>
                    </s:form>
                </div>

                <div class="col-12 col-sm-6 col-md-4">
                    <s:form action="listarComanda" style="margin: 0;">
                        <button type="submit" class="card shadow-sm text-center">
                            <i class="bi bi-card-list icon-btn"></i>
                            <div class="fw-semibold fs-5">Gestionar Comandas</div>
                        </button>
                    </s:form>
                </div>

                <div class="col-12 col-sm-6 col-md-4">
                    <s:form action="listarIngrediente" style="margin: 0;">
                        <button type="submit" class="card shadow-sm text-center">
                            <i class="bi bi-basket-fill icon-btn"></i>
                            <div class="fw-semibold fs-5">Gestionar Ingredientes</div>
                        </button>
                    </s:form>
                </div>

                <div class="col-12 col-sm-6 col-md-4">
                    <s:form action="listarMesa" style="margin: 0;">
                        <button type="submit" class="card shadow-sm text-center">
                            <i class="bi bi-ui-checks-grid icon-btn"></i>
                            <div class="fw-semibold fs-5">Gestionar Mesas</div>
                        </button>
                    </s:form>
                </div>

                <div class="col-12 col-sm-6 col-md-4">
                    <s:form action="listarPedido" style="margin: 0;">
                        <button type="submit" class="card shadow-sm text-center">
                            <i class="bi bi-receipt icon-btn"></i>
                            <div class="fw-semibold fs-5">Gestionar Pedidos</div>
                        </button>
                    </s:form>
                </div>

                <div class="col-12 col-sm-6 col-md-4">
                    <s:form action="listarPlato" style="margin: 0;">
                        <button type="submit" class="card shadow-sm text-center">
                            <i class="bi bi-egg-fried icon-btn"></i>
                            <div class="fw-semibold fs-5">Gestionar Platos</div>
                        </button>
                    </s:form>
                </div>

                <div class="col-12 col-sm-6 col-md-4">
                    <s:form action="listarPlatoIngrediente" style="margin: 0;">
                        <button type="submit" class="card shadow-sm text-center">
                            <i class="bi bi-clipboard-check icon-btn"></i>
                            <div class="fw-semibold fs-5">Gestionar Ingredientes de Platos</div>
                        </button>
                    </s:form>
                </div>

            </div>

        </main>

        <footer class="footer">
            &copy; 2025 TPV Gestión. Todos los derechos reservados.
        </footer>

        <!-- Bootstrap JS Bundle -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

    </body>
</html>
