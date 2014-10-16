Rails.application.config.after_initialize do
  ActiveRecord::Base.connection_pool.disconnect!

  ActiveSupport.on_load(:active_record) do
    config = ActiveRecord::Base.configurations[Rails.env] ||
                Rails.application.config.database_configuration[Rails.env]
    config['pool']              = ENV['DB_POOL']      || ENV['MAX_THREADS'] || 5
    ActiveRecord::Base.establish_connection(config)
  end
end
