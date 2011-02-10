RestTest::Application.routes.draw do
  resources :hounds
  root :to => "hounds#index"
end
