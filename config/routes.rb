if Rails.application.config.activeadmin_associations.autocomplete_models
  models = Rails.application.config.activeadmin_associations.autocomplete_models.join('|')
  Rails.application.routes.prepend do
    get '/autocomplete/:model', to: 'autocomplete#index', :model => /(#{models})/,
      :defaults => { :format => 'json' }
  end
end
