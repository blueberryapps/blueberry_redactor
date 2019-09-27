module BlueberryRedactor
  class ImagesController < ::Admin::BaseController
    def create
      @image = ::BlueberryRedactor::Image.new(file: file_params)

      if @image.save
        @image.reload
        render json: { id: @image.id, url: main_app.rails_blob_url(@image.file) }
      else
        render json: { error: @image.errors }
      end
    end

    private

    def file_params
      params.require(:file)
    end
  end
end
