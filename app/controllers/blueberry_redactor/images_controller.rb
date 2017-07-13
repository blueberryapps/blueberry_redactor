module BlueberryRedactor
  class ImagesController < ::Admin::BaseController
    def create
      @image = ::BlueberryRedactor::Image.new(file: params[:file])

      if @image.save
        @image.reload
        render json: { id: @image.id, url: @image.file.url(:content) }
      else
        render json: { error: @image.errors }
      end
    end
  end
end
