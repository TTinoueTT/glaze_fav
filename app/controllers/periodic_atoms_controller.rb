class PeriodicAtomsController < ApplicationController
  # 管理権限のあるユーザのみユーザ管理機能を利用できる
  before_action :require_admin, only: %i[new edit create update destroy]

  def index
    @page_title = '周期表'
    @periodic_atoms = PeriodicAtom.all
  end

  def show
    @page_title = '原子データ'
    @periodic_atom = PeriodicAtom.find(params[:id])
  end

  def new
    @page_title = '原子の登録'
    @periodic_atom = PeriodicAtom.new
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
                  :weight, :atomic_group_id)
  end
end
