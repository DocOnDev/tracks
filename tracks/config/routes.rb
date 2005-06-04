ActionController::Routing::Routes.draw do |map|
  # Add your own custom routes here.
  # The priority is based upon order of creation: first created -> highest priority.
  
  # Here's a sample route:
  # map.connect 'products/:id', :controller => 'catalog', :action => 'view'
  # Keep in mind you can assign values other than :controller and :action

  # Allow downloading Web Service WSDL as a file with an extension
  # instead of a file named 'wsdl'
  #map.connect ':controller/service.wsdl', :action => 'wsdl'

  # Index Route
  map.connect '', :controller => 'todo', :action => 'list'

  # Login Routes
  map.connect 'login', :controller => 'login', :action => 'login' 
  map.connect 'logout', :controller => 'login', :action => 'logout'
  map.connect 'signup', :controller => 'login', :action => 'signup'

  # ToDo Routes
  map.connect 'completed', :controller => 'todo', :action => 'completed'
  map.connect 'delete/todo/:id', :controller =>'todo', :action => 'destroy'

  # Context Routes
  map.connect 'context/new_context', :controller => 'context', :action => 'new_context'
  map.connect 'context/add_item', :controller => 'context', :action => 'add_item'
  map.connect 'contexts', :controller => 'context', :action => 'list'
  map.connect 'context/:name', :controller => 'context', :action => 'show'
  map.connect 'context/:id', :controller=> 'context', :action => 'show'

  # Projects Routes
  map.connect 'project/new_project', :controller => 'project', :action => 'new_project'
  map.connect 'project/add_item/:id', :controller => 'project', :action => 'add_item'
  map.connect 'project/toggle_check/:id', :controller => 'project', :action => 'toggle_check'
  map.connect 'projects', :controller => 'project', :action => 'list'
  map.connect 'project/:name', :controller => 'project', :action => 'show'
  map.connect 'project/:id', :controller => 'project', :action => 'show'
  
  # Feed Routes
  map.connect 'feed/:action/:name/:user', :controller => 'feed' 


  map.connect 'add_item', :controller => 'todo', :action => 'add_item'
  
  # Install the default route as the lowest priority.
  map.connect ':controller/:action'
  map.connect ':controller/:action/:id'
end