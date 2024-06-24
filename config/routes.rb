Rails.application.routes.draw do
  devise_for :users

  root "main#Home"

  # Rutas personalizadas para las acciones específicas
  get 'dataLoading', to: 'main#dataLoading', as: 'dataLoading'
  get 'labelImg', to: 'main#labelImg', as: 'labelImg'
  get 'test', to: 'main#test', as: 'test'

  # Rutas RESTful para data_loadings
  resources :data_loadings do
    post 'upload_mastografia_images', on: :collection  # Ruta personalizada para subir imágenes de mastografía
    post 'upload_ultrasonido_images', on: :collection  # Ruta personalizada para subir imágenes de ultrasonido
  end
end