class SeriesController < ApplicationController
  def index
    @series = Series.all
  end

  def create
    @series = Series.new(series_params)
    if @series.save
      redirect_to series_path, notice: 'La serie ha sido creada exitosamente.'
    else
      render :new
    end
  end

  def new
    @series = Series.new
  end

  private

  def series_params
    params.require(:series).permit(:name, :synopsis, :director)
  end
end
