Rails.application.routes.draw do
  get "home/index"
  get 'posts/zunda', to: 'posts#zunda'
  resources :posts
  root "posts#index"


  resources :posts, only: [:index, :new, :create, :edit, :update, :destroy, ]
end

# rubyは上から順に実行されます
# そのため、上に書いたルーティングが優先されます
# 例えば、resources :postsの前にget 'posts/zunda'を定義することで
# /posts/zundaへのアクセスが正しくpostsコントローラーのzundaアクションにルーティングされます
# 逆に、resources :postsの後にget 'posts/zunda'を定義すると
# /posts/zundaへのアクセスは/posts/:idにマッチしてしまい、zundaアクションにルーティング されなくなります    