class EmployeesController < ApplicationController
    def index
        @employees = Employee.all
    end

    def show
        @employee = Employee.find(params[:id])
    end

    def new
        @dogs = Dog.all
    end

    def create
        Employee.create({
           first_name: params[:first_name],
           last_name: params[:last_name],
           alias: params[:alias],
           title: params[:title],
           office: params[:office],
           img_url: params[:url],
           dog_id: params[:id],
       })
       redirect_to "/employees/"
    end
    def edit
        @dogs = Dog.all
        @employee = Employee.find(params[:id])
    end

    def update
        @employee = Employee.find(params[:id])
        @employee.update({
           first_name: params[:first_name],
           last_name: params[:last_name],
           alias: params[:alias],
           title: params[:title],
           office: params[:office],
           img_url: params[:url],
           dog_id: params[:idd],
       })
       redirect_to "/employees/"
    end
end
