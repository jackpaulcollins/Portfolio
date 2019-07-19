class WorksController < ApplicationController
  def index
    @work_items = Work.all
  end

  def new
    @work_item = Work.new
  end

  def show
    @work_item = Work.find(params[:id])
  end

  def destroy
    @work_item = Work.find(params[:id])
    @work_item.destroy
    respond_to do |format|
      format.html { redirect_to works_url, notice: 'Portfolio item was successfully destroyed.' }
      format.json { head :no_content }
  end

  def edit
    @work_item = Work.find(params[:id])
  end

  def update
    @work_item = Work.find(params[:id])
    respond_to do |format|
      if @work_item.update(work_params)
        format.html { redirect_to works_path, notice: 'Portfolio piece was successfully updated.' }
        format.json { render :show, status: :ok, location: @work }
      else
        format.html { render :edit }
        format.json { render json: @work.errors, status: :unprocessable_entity }
      end
    end
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
