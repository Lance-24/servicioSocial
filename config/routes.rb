Rails.application.routes.draw do
  # Configuración completa de devise_for para usuarios
  devise_for :users, controllers: {
    registrations: 'registrations' # Controlador personalizado para las acciones de registro
  }

  # Otras rutas de tu aplicación
  root "main#Home"
end
