class ProjectsController < ApplicationController

    http_basic_authenticate_with name: 'andrew', password: 'secret'

    def index
        @projects = Project.all

        render json: @projects
    end
end
