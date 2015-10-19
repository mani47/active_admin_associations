if Rails.application.config.activeadmin_associations.autocomplete_models
  #models = Rails.application.config.activeadmin_associations.autocomplete_models.join('|')
  Rails.application.routes.prepend do
    #get '/autocomplete/:model' => 'autocomplete#index', :model => /(#{models})/, :defaults => { :format => 'json' }
    get '/autocomplete/:model' => 'autocomplete#index', :defaults => { :format => 'json' }
  end
end
