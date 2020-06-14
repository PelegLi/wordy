
Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post 'words/counter/:input_type', to: 'words#counter'
  get 'words/statistics/:key', to: 'words#statistics'
  delete 'words/flushall', to: 'words#flushall'

end
