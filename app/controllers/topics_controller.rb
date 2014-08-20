class TopicsController < ApplicationController
  before_action :authenticate_user!

  def create
    @topic = Topic.new( params.require( :topic ).permit( :name ) )
    @topic.save

    redirect_to action: 'index'
  end

  def destroy
    @topic = Topic.find( params[ :id ] )
    @topic.destroy!

    redirect_to action: 'index'
  end

  def index
    @topics = Topic.all
    @topic = Topic.new
  end

  def new
    @topic = Topic.new
  end
end
