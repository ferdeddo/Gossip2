class GossipsController < ApplicationController
 def new
    @gossip = Gossip.new
  end

  def index
    @gossip = Gossip.all
  end

  def create
    @gossip = Gossip.new(gossip_params)
    if @gossip.save
      redirect_to @gossip
    else
      puts "oups"
    end
  end

  def show
    @gossip = Gossip.find(params[:id])
  end

  def edit
    @gossip = Gossip.find(params[:id])
  end

  def update
    @gossip = Gossip.find(params[:id])
  end

  def destroy
    @gossip = Gossip.find(params[:id])
    @gossip.destroy
    redirect_to root_path
  end

  private
  def gossip_params
    params.require(:gossip).permit(:anonymous_author, :content)
  end
end
