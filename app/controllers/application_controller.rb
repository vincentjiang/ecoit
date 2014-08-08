class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def render_403
    render_optional_error_file(403)
  end

  def render_404
    render_optional_error_file(404)
  end

  def render_422
    render_optional_error_file(422)
  end

  def render_500
    render_optional_error_file(500)
  end

  def render_optional_error_file(status_code)
    status = status_code.to_s
    respond_to do |format|
      if ["403", "404", "422", "500"].include?(status)
        format.html { render :template => "/errors/#{status}",  :format => [:html], :handler => [:erb], :status => status, :layout => "application" }
      else
        format.html { render :template => "/errors/unknown",    :format => [:html], :handler => [:erb], :status => status, :layout => "application" }
      end
      format.all    { render :nothing  => true, :status => status }
    end
  end
  
end
