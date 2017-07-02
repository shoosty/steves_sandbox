class SandboxesController < ApplicationController
  def sandbox_params
    params.require(:sandbox).permit!
  end

  def create
    Sandbox.create(sandbox_params)
  end

  def update
    Sandbox.update(sandbox_params)
    redirect_to "/sandbox"
  end
end
