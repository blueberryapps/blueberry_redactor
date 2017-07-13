BlueberryRedactor::Engine.routes.draw do
  resources :images, :files, only: :create
end
