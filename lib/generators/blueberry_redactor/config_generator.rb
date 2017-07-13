require 'rails/generators'

module BlueberryRedactor
  module Generators
    class ConfigGenerator < Rails::Generators::Base
      source_root File.expand_path('../../../../app', __FILE__)

      def self.next_migration_number(_dirname)
        Time.now.strftime('%Y%m%d%H%M%S')
      end

      def mount_engine
        route "
  namespace :admin do
    mount BlueberryRedactor::Engine => '/blueberry_redactor'
  end
          "
      end

      def create_config
        template 'assets/blueberry_redactor.coffee', File.join('app/assets/javascripts/admin', 'blueberry_redactor.coffee')
        directory 'assets/thirdparty/redactor', 'app/assets/javascripts/thirdparty/redactor'
      end

      def create_migrations
        migration_template "attachments_migration.rb", File.join('db/migrate', 'create_assets.rb')
      end
    end
  end
end
