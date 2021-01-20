class MaterialsController < ApplicationController
  # before_action :molar_masses, only: %i[index molnum_index new create edit update]
  before_action :molar_masses, only: %i[index show new edit]
  before_action :categories, only: %i[new edit]

  def index
    # @js_file = 'materials/index'
    @page_title = '原料分析一覧'
    # @materials = Material.all
    # @materials = current_user.materials
    @materials = current_user.materials.order(:category).order(:name)
    # @length = current_user.materials.where(category: 'アルカリ').count
    # binding.pry
  end

  def show
    @page_title = '詳細'
    @material = current_user.materials.find(params[:id])
  end

  def new
    @page_title = '原料の新規登録'
    @material = Material.new
  end

  def create
    # @material = Material.new(material_params)
    @material = current_user.materials.new(material_params)
    if @material.save
      redirect_to @material, notice: "「#{@material.name}」を登録しました。"
    else
      render :new
    end
  end

  def edit
    @page_title = '原料データの編集'
    @material = current_user.materials.find(params[:id])
  end

  def update
    @material = current_user.materials.find(params[:id])
    if @material.update(material_params)
      redirect_to materials_url, notice: "原料「#{@material.name}」のデータを更新しました。"
    else
      render :edit
    end
  end

  def destroy
    material = current_user.materials.find(params[:id])
    material.destroy
    redirect_to materials_url, notice: "原料「#{material.name}」を削除しました。"
  end

  private

  def material_params
    params.require(:material)
          .permit(:name, :category, :description,
                  :sio2, :tio2, :al2o3, :fe2o3,
                  :cao, :mgo, :k2o, :na2o,
                  :mno, :zno, :bao, :p2o5, :iglos)
  end

  def molar_masses
    @molar_masses = {
      sio2: 60.09, tio2: 79.87, al2o3: 101.96, fe2o3: 159.7,
      cao: 56.08, mgo: 40.31,
      k2o: 94.20, na2o: 61.98,
      mno: 70.94, zno: 81.41, bao: 153.30,
      p2o5: 141.94, iglos: 0
    }
  end

  def categories
    @categories = {
      'アルカリ(長石,酸化リチウム)': 'アルカリ',
      'アルカリ土類(CaO,MgO,SrO,BaO,ZnO,PbO)': 'アルカリ土類',
      'アルミナ(粘土,カオリン)': 'アルミナ',
      'シリカ(珪石,藁灰,蝋石)': 'シリカ'
    }
  end
end
