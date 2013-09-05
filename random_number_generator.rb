require 'sinatra'
require 'json'



get '/helloworld' do
 "hello world"
end

get '/random/count=:number' do
  content_type :json
   total_number_of_random_number = params['number'].to_i
  # return {:sushi => ["Maguro", "Hamachi", "Uni", "Saba", "Ebi", "Sake", "Tai"]}.to_json
  random_numbers = Array.new #(total_number_of_random_number)
  while random_numbers.length < total_number_of_random_number do
  #   status = false
     number = rand(total_number_of_random_number)
  #   puts "#{number}"
  #   random_numbers.each do |randomno|
  #     if randomno == number
  #       status = true
  #       break
  #     end
       random_numbers.push(number) #if status == false
  #   end
   end
 # return {:sushi => ["Maguro", "Hamachi", "Uni", "Saba", "Ebi", "Sake", "Tai"]}.to_json
 return {:randomnumbers => random_numbers}.to_json
end




# def generate_random_numbers
#   random_numbers = array.new
#   while random_numbers.length < 8 do
#     status = false
#     number = rand(8)
#     random_numbers.each do |randomno|
#       if randomno == number
#         status = true
#         break
#       end
#       random_numbers.push(number) if !status
#     end
#   end
#   return random_numbers
# end

# def generate_random_number
#   return rand(8)
# end


