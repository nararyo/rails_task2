class UsersController < ApplicationController
  #一覧画面に対応するアクション
  def index
    @users = User.all.order(id: :asc)
  end
    
    
  #新規作成画面に対応するアクション
  def new
    @user = User.new
  end

  #新規登録するためのアクション
  def create
    User.create(user_params)  
  end

  #詳細を表示するアクション
  def show
    @user = User.find(params[:id])
  end
  #編集画面に遷移するアクション
  def edit
    @user = User.find(params[:id])
  end

  #データを消去するアクション
  def destroy
    user = User.find(params[:id])
    user.destroy
    redirect_to :action => "index"
  end

  #データを更新するアクション
  def update
    user = User.find(params[:id])
    user.update(user_params)
    redirect_to :action => "index"
  end
    
  private 
  #----------------------------コントローラー内で呼び出すメソッド------------------------

  def user_params
    #登録できる情報を制限するためのコード
    params.require(:user).permit(:name, :age)
  end

  #送信すると、以下のパラメーターがデータベースに格納される
  # Parameters: {"user"=>{"name"=>"nara", "age"=>"22"}}

   
    
end