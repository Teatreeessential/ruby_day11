Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    resources :boards
    root "boards#index"
    #생성
    get "/board/new" => "boards#new"
    post "/board/create" => "boards#create"
    #상세보기
    get "/board/show/:id" => "boards#show"
    
    #삭제
    get "/board/destroy/:id" => "boards#destroy"
    #수정
    get "/board/edit/:id" => "boards#edit"
    post "/board/update/:id"=>"boards#update"

end
