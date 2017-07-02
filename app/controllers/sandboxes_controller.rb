class SandboxesController < ApplicationController
  def sandbox_params
    params.require(:sandbox).permit!
  end

  def create
    sandbox_params
    Sandbox.create(sandbox_params)
  end
end
