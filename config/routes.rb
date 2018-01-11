Rails.application.routes.draw do
  get 'pages/donate'

  devise_for :models, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }
  root to: 'blogs#index'

  resources :blogs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :charges

def index
  @projects = Project.search(params[:search])
end

end
