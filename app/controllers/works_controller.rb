class WorksController < ApplicationController
  before_action :set_work, only: [:show, :destroy, :update, :edit]
  layout 'work'

  def index
    @work_items = Work.all
  end

  def react
    @react_work_items = Work.react
  end

  def show
  end

  def new
    @work_item = Work.new
    3.times { @work_item.technologies.build }
  end

  def edit
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

  def destroy
    @work_item.destroy
    respond_to do |format|
      format.html { redirect_to works_url, notice: 'Portfolio item was successfully destroyed.' }
    end
  end

  def update
    respond_to do |format|
      if @work_item.update(work_params)
        format.html { redirect_to works_path, notice: 'Portfolio piece was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def set_work
    @work_item = Work.find(params[:id])
  end

  private

  def work_params
    params.require(:work).permit(:title, 
                                 :subtitle, 
                                 :body,
                                 technologies_attributes: [:name]
                                )
  end
end

