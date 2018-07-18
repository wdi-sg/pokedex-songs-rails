class JobsController < ApplicationController
    def create
        @character = Character.find(params[:character_id])
        @job = @character.jobs.create(job_params)
        redirect_to character_path(@character)
    end

    def destroy
        @character = Character.find(params[:character_id])
        @job = @character.jobs.find(params[:id])
        @job.destroy

        redirect_to character_path(@character)
    end

    private
        def job_params
            params.require(:job).permit(:job_name , :job_level , :job_img)
        end
end
