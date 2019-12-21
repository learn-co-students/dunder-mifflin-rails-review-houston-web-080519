class DogsController < ApplicationController

    def index
        @dogs = Dog.all
    end

    def show
        @dog = Dog.find_by_id(params[:id])
        @owners = @dog.employees
        # @owners = []
        # Employee
    end

end
