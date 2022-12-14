class ConsolesController < ApplicationController
  before_action :set_console, only: %i[ show update destroy ]

  # GET /consoles
  def index
    @consoles = Console.all

    render json: @consoles
  end

  # GET /consoles/1
  def show
    render json: @console
  end

  # POST /consoles
  def create
    @console = Console.new(console_params)

    if @console.save
      render json: @console, status: :created, location: @console
    else
      render json: @console.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /consoles/1
  def update
    if @console.update(console_params)
      render json: @console
    else
      render json: @console.errors, status: :unprocessable_entity
    end
  end

  # DELETE /consoles/1
  def destroy
    @console.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_console
      @console = Console.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def console_params
      params.require(:console).permit(:name, :brand, :upc, :condition, :product_family, :release_year, :trade, :rating, :value, :storage)
    end
end
