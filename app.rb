
class App
  def call(env)
    headers = { 'Content-Type' => 'text/html' }
    response = ['<h1> Hello from the other side. Using rack! <h1>']

    [200, headers, response]
  end
end
