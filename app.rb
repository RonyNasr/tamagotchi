require("sinatra")
require("sinatra/reloader")
also_reload("lib/**/*.rb")
require("./lib/tamagotchi")


get("/") do
  erb(:index)
end

post("/pet") do
  @my_pet = Tamagotchi.new(params.fetch("pet_name"))
  erb(:result)
  # while @my_pet.is_alive()
  #   @my_pet.time_passes();
  # end
end
