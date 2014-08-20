class LearnController < ApplicationController
  before_action :authenticate_user!

  def index
    @question_sets = QuestionSet.where( user: current_user )
  end
end
