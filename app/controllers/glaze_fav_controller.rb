class GlazeFavController < ApplicationController
  def top
    @page_title = 'トップ画面'
  end

  def about
    @page_title = 'GLAZE FAV について'
  end

  # def periodic_table
  #   @page_title = '周期表'
  # end
end
