class GlazeFavController < ApplicationController
  def top
    @page_title = 'トップ画面'
  end

  def about
    @page_title = 'GLAZE FAV について'
  end
end
