class PeriodicAtomsController < ApplicationController
  def index
    @page_title = '周期表'
  end

  def show
    @page_title = '原子データ'
  end

  def new
    @page_title = '原子の登録'
    @periodic_atom = PeriodicAtom.new
  end

  def create
    @periodic_atom = PeriodicAtom.new(atom_params)

    @periodic_atom.save!
    redirect_to @periodic_atom, notice: "「#{@periodic_atom.name}」を登録しました。"

    # if @periodic_atom.save
    # redirect_to @periodic_atom, notice: "「#{@periodic_atom.name}」を登録しました。"
    # else
    #   render :new
    # end
  end

  def edit
    @page_title = '原子の編集'
    @periodic_atom = current_user.periodic_atoms.find(params[:id])
  end

  private

  def atom_params
    params.require(:periodic_atom)
          .permit(:name, :symbol,
                  :atomic_num, :group, :period,
                  :weight)
  end
end
