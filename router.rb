class Router

  def initialize
    @routes = {}
  end

  def match(options)
    @routes.update(options)
  end

  def routes(&proc)
    instance_eval(&proc)
    puts @routes
  end

end

Router.new.routes do
  match "/users" => 'users#index'
  match "/login" => 'sessions#new'
end