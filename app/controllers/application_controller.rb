class ApplicationController < ActionController::Base
    before_action :cors_headers
    private
        def cors_headers
            headers['Access-Control-Allow-Origin'] = '*'
            headers['Access-Control-Allow-Methods'] = 'POST, PUT, DELETE, GET, OPTIONS'
            headers['Access-Control-Request-Method'] = '*'
    end
end
