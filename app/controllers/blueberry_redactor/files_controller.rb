module BlueberryRedactor
  class FilesController < ::Admin::BaseController
    def create
      @file = ::BlueberryRedactor::File.new(file: params[:file])

      if @file.save
        @file.reload
        render json: { id: @file.id, url: @file.file.url, name: @file.file.filename }
      else
        render json: { error: @file.errors }
      end
    end
  end
end
