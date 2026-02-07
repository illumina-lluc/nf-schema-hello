
params.test_parameters.greeting = "test"

process sayHello {

  input:
      val greeting

  script:
  """
  echo 'Hello $greeting !!!'
  """
}

workflow {
  greeting_ch = Channel.of(params.test_parameters.greeting)
  sayHello(greeting_ch)
}
