# frozen_string_literal: true

class CharactersController < ProtectedController
  before_action :set_character, only: %i[show update destroy]

  # GET /characters
  def index
    char_array = current_user.characters.all
    @characters = {}
    char_array.each do |char|
      @characters[char.id] = char
    end

    render json: @characters
  end

  # GET /characters/1
  def show
    render json: @character
  end

  # POST /characters
  def create
    @character = current_user.characters.build(character_params)

    if @character.save
      render json: @character, status: :created, location: @character
    else
      render json: @character.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /characters/1
  def update
    if @character.update(character_params)
      render json: @character
    else
      render json: @character.errors, status: :unprocessable_entity
    end
  end

  # DELETE /characters/1
  def destroy
    @character.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_character
    @character = current_user.characters.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def character_params
    params.require(:character).permit(:name, :high_concept, :trouble, :aspect_1, :aspect_2, :aspect_3)
  end
end
