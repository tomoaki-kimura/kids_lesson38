require 'sinatra'
@@results = []

get '/' do
  # ここにコードを入力してください。
  @status = three_times

  @@results << @status
  @results = @@results
  # ここまでコードを入力して下さい。
  erb :index
end

post '/clear' do
  @@results = []

  redirect '/'
end

private

# ここにコードを入力してください。
def dice
  [*1..10].sample
end
 
def three_times
  result = []
  3.times do
    result << dice
  end
  result
end
# ここまでコードを入力して下さい。

# Lesson3変数を使ってプログラミング