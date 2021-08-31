def generate_html_with(e)
  version  = '3.1.0'
  hostname = `cat /etc/hostname`

  StringIO.new <<-HTML
    <!DOCTYPE html>
    <html>
      <head>
        <meta charset='utf-8'>
        <meta name='viewport' content='width=device-width, initial-scale=1'>
        <title>App Y</title>
      </head>
      <body>
        App Y
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
