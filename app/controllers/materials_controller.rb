class MaterialsController < ApplicationController
  def index
    @materials = Material.all
  end

  def show; end

  def new
    @material = Material.new
  end

  def create
    material = Material.new(material_params)
    material.save
    redirect_to materials_url, notice: "「#{material.name}」を登録しました。"
  end

  def edit; end

  private

  def material_params
    params.require(:material).permit(:name, :sio2)
  end
end
