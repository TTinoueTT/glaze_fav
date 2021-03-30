class GlazesController < ApplicationController
  def index
    @page_title = '登録釉薬一覧'
    # @glazes = current_user.glazes.order(:name)
  end

  def show; end

  def new; end

  def edit; end
end
