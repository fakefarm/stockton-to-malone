class ColorsController < ApplicationController
  before_action :set_color, only: [:show, :edit, :update, :destroy]

  def index
    @colors = Color.all
    render json: @colors
  end

  def show
  end

  def new
    @color = Color.new
  end

  def edit
  end

  def create
    @color = Color.new(color_params)

    respond_to do |format|
      if @color.save
        format.html { redirect_to @color, notice: 'Color was successfully created.' }
        format.json { render :show, status: :created, location: @color }
      else
        format.html { render :new }
        format.json { render json: @color.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @color.update(color_params)
        format.html { redirect_to @color, notice: 'Color was successfully updated.' }
        format.json { render :show, status: :ok, location: @color }
      else
        format.html { render :edit }
        format.json { render json: @color.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @color.destroy
    respond_to do |format|
      format.html { redirect_to colors_url, notice: 'Color was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_color
      @color = Color.find(params[:id])
    end

    def color_params
      params.require(:color).permit(:name)
    end
end
