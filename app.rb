require 'sinatra'
Levels = {
  junior: 'Junior',
  middle: 'Middle',
  senior: 'Senior',
}

get '/' do
  @title = "Invitación"
  erb  :index
end

get '/formulario/' do
  @title = "formulario"
  erb :form
end

get '/aburrido' do
  @title = "aburrido"
  erb :aburrido
end

post '/confirmar' do
  @title = "Confirmar"
  @name = params['name']
  @cedula = params['cedula']
  @level = params['level']
  puts params.inspect
  erb :confirmacion
end
