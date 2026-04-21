nextflow.enable.dsl = 2

process SAY_HELLO {

  output:
    path "message.txt"

  script:
  """
  echo "Hello, world!" > message.txt
  """
}

workflow {
  SAY_HELLO()
}
