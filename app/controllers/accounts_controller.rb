class AccountsController < ApplicationController

  def index
    @accounts = Account.all
  end

  def show
    account
  end

  def new
    @account = Account.new
  end

  def create
    @account = Account.new(account_params)
    if @account.save
      render :create
    else
      render :error
    end
  end

  def destroy
    account.destroy
    redirect_to "/accounts"
  end

  def edit
    account
  end

  def update
    account.update(account_params)
    redirect_to "/accounts"
  end

  def account_params
    params.require(:account).permit!
  end

  def account
    @account = Account.find_by(id: params[:id])
  end
end
