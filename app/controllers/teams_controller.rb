# frozen_string_literal: true

class TeamsController < OpenReadController
  before_action :set_team, except: %i[new edit]

  # Define PlayersController
  def players
    @players = teams.players
  end

  # GET /teams
  def index
    @teams = current_user.teams

    render json: @teams
  end

  # GET /teams/1
  def show
    render json: @team
  end

  # POST /teams
  def create
    @team = current_user.teams.build(team_params)

    if @team.save
      render json: @team, status: :created, location: @team
    else
      render json: @team.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /teams/1
  def update
    if @team.update(team_params)
      render json: @team
    else
      render json: @team.errors, status: :unprocessable_entity
    end
  end

  # DELETE /teams/1
  def destroy
    @team.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_team
    @team = current_user.teams.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def team_params
    params.require(:team).permit(:team_name)
  end
end
