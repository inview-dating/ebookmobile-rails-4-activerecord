EbookmobileRails4Activerecord::Application.routes.draw do
  get "authors/index"
  get "authors/create"
  resources "authors", only: [ :index, :create ]
end
