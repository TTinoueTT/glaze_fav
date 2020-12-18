class Admin::UsersController < ApplicationController
  def index
    @page_title = 'ユーザー 一覧'
    @users = User.all
  end

  def show
    @page_title = 'ユーザー情報'
    @user = User.find(params[:id])
  end

  def new
    @page_title = 'ユーザー登録'
    @user = User.new
  end

  def edit
    @page_title = 'ユーザーを編集'
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to admin_user_path(@user), notice: "ユーザー「#{@user.name}」を登録しました。"
    else
      render :new
    end
  end

  def update
    @user = User.find(params[:id])

    if @user.update(user_params)
      redirect_to admin_user_path(@user), notice: "ユーザー「#{@user.name}」を登録しました。"
    else
      render :new
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to admin_users_url, notice: "ユーザー「#{@user.name}」を削除しました。"
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :admin, :password, :password_confirmation)
  end
end
