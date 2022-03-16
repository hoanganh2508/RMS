class Admin::DishesController < Admin::AdminsController
  before_action :find_dish , only: [:edit, :update, :destroy]

  def new
    @dish = Dish.new
  end

  def create
    @dish = Dish.new dish_params
    @dish.image.attach(params[:dish][:image])
    if @dish.save
      flash[:success] = "Tạo thành công"
      redirect_to admin_dishes_path
    else
      render 'new'
    end
  end

  def index
    @dishes = Dish.paginate(page: params[:page], per_page: 10)
  end

  def edit
  end

  def update
    if @dish.update(dish_params)
      flash[:success] = "Cập nhật thành công"
      redirect_to admin_tours_path
    else
      render 'edit'
    end
  end

  def destroy
    @dish.destroy
    flash[:success] = "Xoá thành công"
    redirect_to admin_dishes_path
  end

  private
  def find_dish
    @dish = Dish.find_by(id: params[:id])
    redirect_to admin_dishes_path unless @dish
  end

  def dish_params
    params.require(:dish).permit(:name,:address,:phone_number,:price,:content,:image,:category_id,:duration)
  end
end
