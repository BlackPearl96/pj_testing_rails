environments = Rails.application.config.rack_mini_profiler_environments
if environments.include? Rails.env
  require 'rack-mini-profiler'
  Rack::MiniProfiler.config.position = 'right'
  Rack::MiniProfiler.config.start_hidden = true
  # Rack::MiniProfiler.config.skip_schema_queries = true
  # Rack::MiniProfiler.config.backtrace_threshold_ms = 5
  # initialization is skipped so trigger it
  Rack::MiniProfilerRails.initialize! Rails.application
end
