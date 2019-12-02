class ApplicationController < ActionController::Base
  def rack_mini_profiler_authorize_request
    environments = Rails.application.config.rack_mini_profiler_environments
    return unless Rails.env.in? environments

    Rack::MiniProfiler.authorize_request
  end
end
