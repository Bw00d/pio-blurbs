Rails.application.configure do
  # Settings specified here will take precedence over those in
  # config/application.rb.

  #Configuration defaults for s3 upload
  config.paperclip_defaults = {
    :storage => :s3,
    :s3_protocol => :https,
    :s3_credentials => {
      :bucket => ENV['S3_BUCKET_NAME'],
      :access_key_id => ENV['AWS_ACCESS_KEY_ID'],
      :secret_access_key => ENV['AWS_SECRET_ACCESS_KEY'],
      :s3_region => ENV.fetch('AWS_REGION'),
    },
  
    :url =>':s3_domain_url',
    :path => '/:class/:attachment/:id_partition/:style/:filename',
    }
  

  # Bullet gem
  config.after_initialize do
    Bullet.enable        = true
    Bullet.alert         = false
    Bullet.bullet_logger = false
    Bullet.console       = true
    Bullet.rails_logger  = true
    Bullet.add_footer    = false
  end

  # In the development environment your application's code is reloaded on
  # every request. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false

  # Do not eager load code on boot.
  config.eager_load = false

  # Show full error reports.
  config.consider_all_requests_local = true

  # Enable/disable caching. By default caching is disabled.
  if Rails.root.join('tmp', 'caching-dev.txt').exist?
    config.action_controller.perform_caching = true

    config.cache_store = :memory_store
    config.public_file_server.headers = {
      'Cache-Control' => "public, max-age=#{2.days.seconds.to_i}"
    }
  else
    config.action_controller.perform_caching = false
    config.cache_store = :null_store
  end

  # Do not send actual e-mails in development mode. Use the Letter Opener gem
  # to save "sent" e-mails in HTML files within tmp/letter_opener
  config.action_mailer.delivery_method = :letter_opener
  config.action_mailer.raise_delivery_errors = false
  config.action_mailer.perform_caching = false

  # Print deprecation notices to the Rails logger.
  config.active_support.deprecation = :log

  # Raise an error on page load if there are pending migrations.
  config.active_record.migration_error = :page_load

  # Debug mode disables concatenation and preprocessing of assets.
  # This option may cause significant delays in view rendering with a large
  # number of complex assets.
  config.assets.debug = true

  # Suppress logger output for asset requests.
  config.assets.quiet = true

  # Raises error for missing translations
  config.action_view.raise_on_missing_translations = true

  # Use an evented file watcher to asynchronously detect changes in source code,
  # routes, locales, etc. This feature depends on the listen gem.
  config.file_watcher = ActiveSupport::EventedFileUpdateChecker

  # Host for links sent via e-mail by Action Mailer
  config.action_mailer.default_url_options = { host: 'localhost', port: 3000 }

  # If using a Vagrant VM for development, allow the host machine to see the
  # detailed exceptions provided by the better-errors gem
  BetterErrors::Middleware.allow_ip! '10.0.2.2'
  config.web_console.whiny_requests = false

  Paperclip.options[:command_path] = "/usr/local/bin/"
end
