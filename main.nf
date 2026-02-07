process sayHello {
    publishDir 'out', mode: 'move'

    input:
        val name

    output:
        path "hello.txt"

    debug true
    script:
    """
    echo "Hello, ${name}!" > hello.txt
    """
}

workflow {
    greeting_ch = Channel.of(params.test_parameters.greeting)
    sayHello(params.test_parameters.greeting)
}
