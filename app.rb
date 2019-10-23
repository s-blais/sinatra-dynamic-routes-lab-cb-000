require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    "#{params[:name].reverse}"
  end

  get '/square/:number' do
    "#{params[:number].to_i * params[:number].to_i}"
  end

  get '/say/:number/:phrase' do
    # binding.pry
    output = ""
    params[:number].to_i.times do
      output += params[:phrase]
    end
    output
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    params.values.join(" ") + "."
  end

  get '/:operation/:number1/:number2' do
    case params[:operation]
    when "add"
      params[:number1] + params[:number2]
  end

end
