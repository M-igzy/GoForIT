class TasksController < ApplicationController
    before_action :set_journal
    before_action :set_task, only: %i[show edit update destroy]

    def index
        redirect_to @journal
    end

    def show
        @description = @task.descriptions.build
    end

    def new
        @task = Task.new
    end

    def edit
    end

    def create
        @task = @journal.tasks.build(task_params)
        @task.position = @journal.get_next_task_position

        if @task.save
            redirect_to @journal
        else
            render :new
        end
    end

    def update
        if @task.update(task_params)
            redirect_to @journal
        else
            render :edit
        end
    end

    def destroy
        @task.destroy
        redirect_to @journal
    end

    private

    def set_journal
        @journal = current_user.journals.find(params[:journal_id])
    end

    def set_task
        @task = @journal.tasks.find(params[:id])
    end

    def task_params
        params.require(:task).permit(:name, :description, :deadline, :completed)
    end
end
