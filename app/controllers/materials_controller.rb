class MaterialsController < ApplicationController
  before_action :molar_masses, only: %i[index molnum_index new create edit update]

  def index
    @page_title = '原料分析値表'
    @materials = Material.all
  end

  def molnum_index
    @page_title = '原料mol値表'
    @materials = Material.all
  end

  def show
    @page_title = '詳細'
    @material = Material.find(params[:id])
  end

  def new
    @page_title = '原料の新規登録'
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
    @page_title = '原料データの編集'
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

  def molar_masses
    # @molecular_names =
    #   %w[sio2 tio2 al2o3 fe2o3 cao mgo k2o na2o]
    @molar_masses = {
      sio2: 60.09, tio2: 79.87, al2o3: 101.96, fe2o3: 159.7,
      cao: 56.08, mgo: 40.31,
      k2o: 94.20, na2o: 61.98
    }
  end

  # def page_title(name)

  # end
end
