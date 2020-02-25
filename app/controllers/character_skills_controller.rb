# frozen_string_literal: true

class CharacterSkillsController < ApplicationController
  before_action :set_character_skill, only: %i[show update destroy]

  # GET /character_skills
  def index
    @character_skills = CharacterSkill.all

    render json: @character_skills
  end

  # GET /character_skills/1
  def show
    render json: @character_skill
  end

  # POST /character_skills
  def create
    @character_skill = CharacterSkill.new(character_skill_params)

    if @character_skill.save
      render json: @character_skill, status: :created, location: @character_skill
    else
      render json: @character_skill.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /character_skills/1
  def update
    if @character_skill.update(character_skill_params)
      render json: @character_skill
    else
      render json: @character_skill.errors, status: :unprocessable_entity
    end
  end

  # DELETE /character_skills/1
  def destroy
    @character_skill.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_character_skill
    @character_skill = CharacterSkill.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def character_skill_params
    params.require(:character_skill).permit(:level, :character_id, :skill_id)
  end
end
