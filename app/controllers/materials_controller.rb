class MaterialsController < ApplicationController
  before_action :molecular_names, only: %i[new create edit update]
  def index
    @materials = Material.all
  end

  def show
    @material = Material.find(params[:id])
  end

  def new
    @material = Material.new
  end

  def create
    @material = Material.new(material_params)
    if @material.save
      redirect_to @material, notice: "「#{@material.name}」を登録しました。"
    else
      render :new
    end
  end

  def edit
    @material = Material.find(params[:id])
  end

  def update
    @material = Material.find(params[:id])
    if @material.update(material_params)
      redirect_to materials_url, notice: "原料「#{@material.name}」のデータを更新しました。"
    else
      render :edit
    end
  end

  def destroy
    material = Material.find(params[:id])
    material.destroy
    redirect_to materials_url, notice: "原料「#{material.name}」を削除しました。"
  end

  private

  def material_params
    params.require(:material)
          .permit(:name, :sio2, :tio2, :al2o3, :fe2o3, :cao, :mgo, :k2o, :na2o)
  end

  def molecular_names
    @molecular_names =
      %w[sio2 tio2 al2o3 fe2o3 cao mgo k2o na2o]
  end
end
