class TypesController < ApplicationController
  before_action :set_type, only: [:show, :update, :destroy]

  # GET /types
  def index
    @types = Type.all
    render json: @types
  end

  # GET /types/1
  def show
    render json: @type
  end

  # POST /types
  def create
    @type = Type.new(type_params)

    if @type.save
      render json: @type, status: :created, location: @type
    else
      render json: @type.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /types/1
  def update
    if @type.update(type_params)
      render json: @type
    else
      render json: @type.errors, status: :unprocessable_entity
    end
  end

  # DELETE /types/1
  def destroy
    @type.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_type
    if params[:contact_id]
      @type = Contact.find(params[:contact_id]).type
      return @type
    end

      @type = Type.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def type_params
    params.require(:type).permit(:description)
  end
end
