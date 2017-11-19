require "sinatra"
require "sinatra/reloader"
require "sqlite3"
require "pry"

get "/" do
  erb :home
end

#Index - get all the buds and show them
get '/buds' do
  @bud = query_db 'SELECT * FROM buds'
  erb :buds_index
end


#New - Form to add a new buddy to database!
get "/buds/new_bud" do
  erb :new_bud
end

#CREATE -  when a form is submitted
post "/buds" do
  query_db "INSERT INTO buds (name, type, image) VALUES ('#{ params[:name] }', '#{ params[:type] }', '#{ params[:image] }')"
  redirect to('/buds') # Get request
end

#READ - showinformation for a single bud
get "/buds/:id" do
  @bud = query_db('SELECT * FROM buds WHERE id = ' + params[:id]).first
  erb :display_buds
end

#EDIT - get the bud to update
get "/buds/:id/edit" do
   @bud = query_db('SELECT * FROM buds WHERE id = ' + params[:id]).first
   erb :edit_bud
end

#UPDATE: Updates an existing bud in the database with new information.
post '/buds/:id' do
  update = "UPDATE buds SET name='#{ params[:name] }', family='#{ params[:type] }', image='#{ params[:image] }' WHERE id = #{ params[:id] }"
  query_db update
  redirect to("/buds/#{ params[:id] }")
end

# Destroy: Deletes the bud with the provided ID from the database
get '/buds/:id/delete' do
  query_db 'DELETE FROM buds WHERE id = ' + params[:id].to_i # Sanitisation
  redirect to('/buds')
end

def query_db(sql_statement)
  db = SQLite3::Database.new 'database.sqlite3'
  db.results_as_hash = true

  puts sql_statement # Optional but nice for debugging

  results = db.execute sql_statement
  db.close
  results # Implicit return
end
