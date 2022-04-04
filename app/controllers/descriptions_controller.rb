class DescriptionsController < ApplicationController
    before_action :set_description, only: %i[show edit update destroy]

    def create
        @journal = current_user.journals.find(params[:journal_id])
        @task = @journal.tasks.find(params[:task_id])
        @task.descriptions.create
        redirect_to journal_task_path(@journal, @task)
    end

    def update
        respond_to do |format|
          if @description.update(description_params)
            format.html do
              redirect_to @description,
                          notice: 'Description was successfully updated.'
            end
            format.json { render :show, status: :ok, location: @description }
          else
            format.html { render :edit, status: :unprocessable_entity }
            format.json do
              render json: @description.errors, status: :unprocessable_entity
            end
          end
        end
    end

    def destroy
        @description.destroy
        respond_to do |format|
          format.html do
            redirect_to descriptions_url,
                        notice: 'Description was successfully destroyed.'
          end
          format.json { head :no_content }
        end
    end

    private

    def set_description
        @description = Description.find(params[:id])
    end

    def description_params
        params.require(:description).permit(:task_id)
    end


end
