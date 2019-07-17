class WorksController < ApplicationController
  def index
    @work_items = Work.all
  end

  def new
    @work_item = Work.new
  end

  def create
    @work_item = Work.new(work_params)

    respond_to do |format|
      if @work_item.save
        format.html { redirect_to works_path, notice: 'Portfolio piece was successfully created.' }
        format.json { render :show, status: :created, location: @work }
      else
        format.html { render :new }
        format.json { render json: @work_item.errors, status: :unprocessable_entity }
      end
    end
  end

  def work_params
    params.require(:work).permit(:title, :subtitle, :body)
  end
end
