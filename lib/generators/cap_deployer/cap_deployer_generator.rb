class CapDeployerGenerator < Rails::Generators::Base
  source_root File.expand_path('../templates', __FILE__)

  def cap_deploy
    @arg = Hash.new
    @arg['repo'] = ask "Enter your git repository: "
    @arg['role'] = ask 'Enter your role: '

    template 'deploy.erb', 'config/deploy.rb', @arg
    capify!
  end

  private

  def application_name
    if defined?(Rails) && Rails.application
      Rails.application.class.name.split('::').first.underscore
    else
      "application"
    end
  end
end
