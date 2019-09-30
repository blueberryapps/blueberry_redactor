module BlueberryRedactor
  class FilesController < ::Admin::BaseController
    def create
      @file = ::BlueberryRedactor::File.new(file: file_params)

      if @file.save
        @file.reload
        render json: { id: @file.id, url: main_app.rails_blob_url(@file.file) }
      else
        render json: { error: @file.errors }
      end
    end

    private

    def file_params
      params.require(:file)
    end
  end
end
