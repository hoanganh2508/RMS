class Admin::TablesController < Admin::AdminsController
  before_action :find_table , only: [:edit, :update, :destroy]
  def new
    @table = Table.new
  end

  def create
    @table = Table.new table_params
    if @table.save
      flash[:success] = "Tạo thành công"
      redirect_to admin_tables_path
    else
      render 'new'
    end
  end

  def index
    @tables = Table.paginate(page: params[:page])
  end

  def edit
  end

  def update
    if @table.update(table_params)
      flash[:success] = "Cập nhật bàn "
      redirect_to admin_tables_path
    else
      render 'edit'
    end
  end

  def destroy
    @table.destroy
    flash[:success] = "Xoá bàn"
    redirect_to admin_tables_path
  end

  private
  def find_table
    @table = Table.find_by(id: params[:id])
    redirect_to admin_tables_path unless @table
  end

  def table_params
    params.require(:table).permit(:name)
  end
end
