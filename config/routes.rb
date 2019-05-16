Spree::Core::Engine.add_routes do
  # Add your extension routes here
  namespace :admin do
    resource :home_page_settings, only: %i[edit update]
    resource :instagram_settings, only: %i[edit update destroy]
    resources :instagram_posts, only: [:index] do
      collection do
        get :download
        post :update_visibility
      end
    end
    namespace :instagram_callbacks do
      get :connect
      get :callback
    end
  end
  namespace :api, defaults: { format: 'json' } do
    namespace :v2 do
      namespace :storefront do
        get '/instagram_feed', to: 'instagram#feed'
      end
    end
  end
end
