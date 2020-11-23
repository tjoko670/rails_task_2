class UsersController < ApplicationController
  #一覧表示のアクション
  def index
    @users = User.all
  end

  #新規登録のアクション
  def new
    @user = User.new
  end

      #Stronng Parameterの記述
  def create
    User.create(user_params)
    redirect_to action: :index
  end

  #編集のアクション
  def edit
    @user =User.find(params[:id])
  end

  #データ更新のアクション
  def update
    user = User.find(params[:id])
    user.update(user_params)
    redirect_to action: :index
  end

  #削除ボタンのアクション
  def destroy
    user = User.find(params[:id])
    user.destroy
    redirect_to action: :index
  end

  private
  def user_params
    params.require(:user).permit(:name, :age)
  end
end
