class GossipController < ApplicationController
  def   new
    @post = User.find(1)
  end

  def create
    user = new
    @post = Gossip.new( user_id: user.id,
                        'title' => params[:title],
                        'content' => params[:content])
    if @post.save
      @array_gossip = Gossip.show_all
      render "index.html.erb"
    else
      render new_gossip_path
    end
end

  def index
    @array_gossip = Gossip.show_all
    @array_user = User.show_user
  end

  def show
    @array_gossip = Gossip.show_all
  end

  def welcome
    @user = params[:first_name]
  end
end
