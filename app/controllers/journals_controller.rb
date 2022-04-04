class JournalsController < ApplicationController
    before_action :authenticate_user!
    before_action :set_journal, only: %i[show edit update destroy]

    def index
        @journals = current_user.journals
    end

    def show
    end

    def new
        @journal = current_user.journals.build
    end

    def edit
    end

    def create
        @journal = current_user.journals.build(journal_params)

        if @journal.save
            redirect_to journals_url, notice: 'Category has been successfully created'
        else
            render :new
        end

        # respond_to do |format|
        #     if @journal.save
        #         format.html do
        #         redirect_to journals_path,
        #                     success: 'Category has been created successfully'
        #     end
        #     format.json { render :show, status: :created, location: @journal }
        # else
        #     format.html { render :new, status: :unprocessable_entity }
        #     format.json do
        #         render json: @journal.errors, status: :unprocessable_entity
        #     end
        # end
    end

    def update
        respond_to do |format|
            if @journal.update(journal_params)
              format.html do
                redirect_to journals_path, success: 'Category has been updated successfully'
              end
              format.json { render :show, status: :ok, location: @journal }
            else
              format.html { render :edit, status: :unprocessable_entity }
              format.json do
                render json: @journal.errors, status: :unprocessable_entity
              end
            end
        end
    end

    def destroy
        @journal.destroy
        respond_to do |format|
            format.html do
                redirect_to journals_url, success: "Category was successfully destroyed."
            end
            format.json { head :no_content }
        end
    end

    private

        def set_journal
            @journal = current_user.journals.find(params[:id])
        end

        def journal_params
            params.require(:journal).permit(:name)
        end
    end
