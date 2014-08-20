class SetController < ApplicationController
  before_action :authenticate_user!

  def questions
    @set = QuestionSet.includes( :questions ).find( params[ :id ] )
    @questions = @set.questions
  end
end
