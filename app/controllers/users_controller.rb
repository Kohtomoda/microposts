class UsersController < ApplicationController
  before_action :set_user, only: [:edit, :update]
  before_action :correct_user,   only: [:edit, :update]
  
  def edit
  end
  
  def update
    if @user.update(user_params)
      # 保存に成功した場合はトップページへリダイレクト
      redirect_to root_path , notice: 'プロフィールを更新しました'
    else
      # 保存に失敗した場合は編集画面へ戻す
      render 'edit'
    end
  end
  
  def show
  @user = User.find(params[:id])
  end
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Wellcome to sample the App!"
      redirect_to @user
    else
    render 'new'
    end
  end
        
  private
  
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :area, :intro)
  end
end

private

def set_user
    @user = User.find(params[:id])
end

# セッションユーザーがユーザーと等しくなれけばroot_path
def correct_user
    redirect_to(root_url) unless @user == current_user
end