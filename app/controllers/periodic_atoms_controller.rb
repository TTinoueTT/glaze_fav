class PeriodicAtomsController < ApplicationController
  # 管理権限のあるユーザのみユーザ管理機能を利用できる
  before_action :require_admin, only: %i[new edit create update destroy]

  def index
    @page_title = '周期表'
    @atoms = PeriodicAtom.all
    @atoms_p1 = @atoms.where(period: 1) # 第1周期のレコード群
    @atoms_p2 = @atoms.where(period: 2) # 第2周期のレコード群
    @atoms_p3 = @atoms.where(period: 3) # 第3周期のレコード群
    @atoms_p4 = @atoms.where(period: 4) # 第4周期のレコード群
    @atoms_p5 = @atoms.where(period: 5) # 第5周期のレコード群
    @atoms_p6 = @atoms.where(period: 6) # 第6周期のレコード群
    @atoms_p7 = @atoms.where(period: 7) # 第7周期のレコード群
    @groups = AtomicGroup.all
    # binding.pry
  end

  def show
    @page_title = '原子データ'
    @periodic_atom = PeriodicAtom.find(params[:id])
  end

  def new
    @page_title = '原子の登録'
    @periodic_atom = PeriodicAtom.new
    @groups = AtomicGroup.all
    # binding.pry
  end

  def create
    @periodic_atom = PeriodicAtom.new(atom_params)

    # @periodic_atom.save!
    # redirect_to @periodic_atom, notice: "「#{@periodic_atom.name}」を登録しました。"

    if @periodic_atom.save
      redirect_to @periodic_atom, notice: "「#{@periodic_atom.name}」を登録しました。"
    else
      render :new
    end
  end

  def edit
    @page_title = '原子の編集'
    @periodic_atom = PeriodicAtom.find(params[:id])
    @groups = AtomicGroup.all
  end

  def update
    @periodic_atom = PeriodicAtom.find(params[:id])

    if @periodic_atom.update(atom_params)
      redirect_to periodic_atoms_url, notice: "原子「#{@periodic_atom.name}」のデータを更新しました。"
    else
      render :edit
    end
  end

  def destroy
    periodic_atom = PeriodicAtom.find(params[:id])
    periodic_atom.destroy
    redirect_to periodic_atoms_url, notice: "原子「#{periodic_atom.name}」を削除しました。"
  end

  private

  def atom_params
    params.require(:periodic_atom)
          .permit(:id, :name, :symbol,
                  :atomic_num, :period,
                  :weight, :melting_point, :boiling_point,
                  :atomic_group_id)
  end
end
