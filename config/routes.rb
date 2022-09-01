Rails.application.routes.draw do
  devise_for :admins, skip: [:registrations], controller: {sessions: 'admin/sessions'}

  namespace :admin do
    root to: "home#index"
  end
end
