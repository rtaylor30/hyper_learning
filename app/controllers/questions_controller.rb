class QuestionsController < ApplicationController
  before_action :authenticate_user!

  def create
    @question = Question.new( params.require( :question ).permit( :text, :answer ) )
    @question.topic = Topic.find( params[ :topic_id ] )
    @question.save

    redirect_to action: 'index'
  end

  def destroy
    @question = Question.find( params[ :id ] )
    @question.destroy

    redirect_to action: 'index'
  end

  def new
    @question = Question.new
  end

  def index
    @questions = Question.where( topic_id: params[ :topic_id ] )
    @topic = Topic.find( params[ :topic_id ] )
    @new_question = Question.new
  end
end
