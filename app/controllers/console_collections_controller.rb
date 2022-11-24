class ConsoleCollectionsController < ApplicationController
  before_action :set_console_collection, only: %i[ show update destroy ]

  # GET /console_collections
  def index
    @console_collections = ConsoleCollection.all

    render json: @console_collections
  end

  # GET /console_collections/1
  def show
    render json: @console_collection
  end

  # POST /console_collections
  def create
    @console_collection = ConsoleCollection.new(console_collection_params)

    if @console_collection.save
      render json: @console_collection, status: :created, location: @console_collection
    else
      render json: @console_collection.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /console_collections/1
  def update
    if @console_collection.update(console_collection_params)
      render json: @console_collection
    else
      render json: @console_collection.errors, status: :unprocessable_entity
    end
  end

  # DELETE /console_collections/1
  def destroy
    @console_collection.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_console_collection
      @console_collection = ConsoleCollection.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def console_collection_params
      params.require(:console_collection).permit(:user_id, :console_id)
    end
end
