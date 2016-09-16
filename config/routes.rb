Rails.application.routes.draw do
  #mapeia as chamadas a 'localhost:3000/' para o método show de 'app/controllers/timeline_controller.rb' e a view
  #app/views/timeline/show.html.erb
	get '/', to: 'timeline#show'
end
