class ApplicationController < ActionController::Base
  helper_method :current_user
  before_action :login_required

  private

  def current_user # ログインしている場合
    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
  end

  def login_required # ログインしていない場合
    redirect_to login_path unless current_user
  end

  def require_admin # 後ほどHTTPステータスコード404を返すようにする
    redirect_to root_path unless current_user.admin?
  end
end
