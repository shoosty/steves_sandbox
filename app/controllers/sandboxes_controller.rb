User = Struct.new(:id, :user, :fname, :lname, :email, :password)

class SandboxesController < ApplicationController
  def sandbox_params
    params.require(:sandbox).permit!
  end

  def create
    Sandbox.create(sandbox_params)
    # rails magic - a controller will by deaful render a view witht he same name as the action
  end

  def update
    set_post
    @post.update(sandbox_params)
    redirect_to "/sandbox"
  end

  def set_post
      @post ||= Sandbox.find(params[:id])
    end
end
