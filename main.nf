
params.greeting = "test"

process sayHello {

  input:
      val greeting

  script:
  """
  echo 'Hello $greeting !!!'
  """
}

workflow {
  greeting_ch = Channel.of(params.greeting)
  sayHello(greeting_ch)
}
