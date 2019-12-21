class EmployeesController < ApplicationController

    def index
        @employees = Employee.all
    end

    def show
        @employee = Employee.find_by_id(params[:id])
        # @owners = @dog.employees
        # @owners = []
        # Employee
    end

    def new
        @dogs = Dog.all
    end

    def create
        @emp = Employee.create(first_name: params[:first_name], last_name: params[:last_name], alias: params[:alias], office: params[:office], title: params[:title], dog_id: params[:dog_id])
    end
end
