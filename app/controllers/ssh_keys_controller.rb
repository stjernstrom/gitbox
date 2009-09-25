class SshKeysController < ApplicationController
  def index
    @ssh_keys = SshKey.all
  end
  
  def show
    @ssh_key = SshKey.find(params[:id])
  end
  
  def new
    @ssh_key = SshKey.new
  end
  
  def create
    @ssh_key = SshKey.new(params[:ssh_key])
    if @ssh_key.save
      flash[:notice] = "Successfully created ssh key."
      redirect_to @ssh_key
    else
      render :action => 'new'
    end
  end
  
  def edit
    @ssh_key = SshKey.find(params[:id])
  end
  
  def update
    @ssh_key = SshKey.find(params[:id])
    if @ssh_key.update_attributes(params[:ssh_key])
      flash[:notice] = "Successfully updated ssh key."
      redirect_to @ssh_key
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @ssh_key = SshKey.find(params[:id])
    @ssh_key.destroy
    flash[:notice] = "Successfully destroyed ssh key."
    redirect_to ssh_keys_url
  end
end
