class CompaniesController < ApplicationController

  def index
    @companies = Company.all
  end

  def new
    @company = Company.new
  end

  def create
    @company = Company.create(company_params)
    redirect_to @company
  end

  def show
    @company = Company.find(params[:id])
  end

  def edit
    
  end

  def update

  end

  def destroy
    @company = Company.find(params[:id])
    @company.destroy
    redirect_to companies_path
  end


  private

  def company_params
    params.require(:company).permit(:name)
  end
end
