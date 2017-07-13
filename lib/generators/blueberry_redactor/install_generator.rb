require 'rails/generators'
require 'rails/generators/migration'

module BlueberryRedactor
  module Generators
    class InstallGenerator < Rails::Generators::Base
      include ::Rails::Generators::Migration
      source_root File.expand_path('../../../../app', __FILE__)

      # class_option :orm, type: :true, default: true, desc: 'ORM (active_record/mongoid)'

      def self.next_migration_number(_dirname)
        Time.now.strftime('%Y%m%d%H%M%S')
      end

      def mount_engine
        route "mount BlueberryRedactor::Engine => '/blueberry_redactor'"
      end

      def create_models
        template 'models/attachment.rb', File.join('app/models', 'attachment.rb')

        %i[image file].each do |filename|
          template "models/blueberry_redactor/#{filename}.rb", File.join('app/models/blueberry_redactor', "#{filename}.rb")
          template "uploaders/#{filename}_uploader.rb", File.join('app/uploaders', "#{filename}_uploader.rb")
        end
      end

      def create_controllers
        %i[image file].each do |filename|
          template "controllers/blueberry_redactor/#{filename}s_controller.rb", File.join('app/controllers/blueberry_redactor', "#{filename}s_controller.rb")
        end
      end

      def create_config
        template 'assets/javascripts/blueberry_redactor/blueberry_redactor.coffee', File.join('app/assets/javascripts/admin', 'blueberry_redactor.coffee')
        directory 'assets/javascripts/blueberry_redactor/redactor', 'app/assets/javascripts/thirdparty/redactor'
      end

      def create_migrations
        migration_template '../lib/generators/templates/attachments_migration.rb', File.join('db/migrate', 'create_assets.rb')
      end
    end
  end
end
