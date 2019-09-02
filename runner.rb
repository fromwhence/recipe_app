require 'http'

# Index action

response = HTTP.get("http://localhost:3000/api/recipes")
p response.parse

# Show action

response = HTTP.get("http://localhost:3000/api/recipes/1")
p response.parse


# Create action

client_params = {}

print "Title:"
client_params[:title] = gets.chomp
print "Chef:"
client_params[:chef] = gets.chomp
print "ingredients"
# needs rest of keys 

response = HTTP.post(
                    "http://localhost:3000/api/recipes",
                    form:{
                          title:
                          chef:
                          prep_time:
                          ingredients:
                          directions:
                          image_url:
                          }

                    )
