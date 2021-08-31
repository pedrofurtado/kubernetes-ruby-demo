def generate_html_with(e)
  version  = '1.1.0'
  hostname = `cat /etc/hostname`

  StringIO.new <<-HTML
    <!DOCTYPE html>
    <html>
      <head>
        <meta charset='utf-8'>
        <meta name='viewport' content='width=device-width, initial-scale=1'>
        <title>App X</title>
      </head>
      <body>
        App X
        <br>
        <br>
        Version: #{version}
        <br>
        Hostname: #{hostname}
        <br>
        <br>
        Env: #{ENV.inspect}
        <br>
      </body>
    </html>
  HTML
end

run lambda { |env|
  [
    200,
    {
      'Content-Type' => 'text/html'
    },
    generate_html_with(env)
  ]
}
