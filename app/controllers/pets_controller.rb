class PetsController < ApplicationController
before_action :find_pet, only: [:show, :edit, :update, :destroy]

  def index
    if params[:category].blank?
      @pets = Pet.all.order("created_at DESC")
    else
      @category_id = Category.find_by(name: params[:category]).id
      @pets = Pet.where(:category_id => @category_id).order("created_at DESC")
    end
  end

  def show
  end

  def new
    @pet = current_user.pets.build
    @categories = Category.all.map { |c| [c.name, c.id] }
  end

  def create
		@pet = current_user.pets.build(pet_params)
		@pet.category_id = params[:category_id]

		if @pet.save
			redirect_to root_path
		else
			render 'new'
		end
	 end

  def edit
      @categories = Category.all.map { |c| [c.name, c.id] }
  end

  def update
      @categories = Category.all.map { |c| [c.name, c.id] }
    if @pet.update(pet_params)
      redirect_to pet_path(@pet)
    else
        render 'edit'
  end
end


  def destroy
    @pet.destroy
    redirect_to root_path
  end



private

  def pet_params
    params.require(:pet).permit(:report, :description, :where_specifics, :author, :category_id, :pet_img, :petname, :breed, :type, :size, :gender, :age, :lastseen, :owner, :phone)
  end

  def find_pet
    @pet = Pet.find(params[:id])
  end

end

