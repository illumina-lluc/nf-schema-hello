process sayHello {
    publishDir 'out', mode: 'move'

    input:
        val name

    output:
        path "hello_${name}.txt"

    debug true
    script:
    """
    echo "Hello, ${name}!" > "hello_${name}.txt"
    """
}

workflow {
    greeting_ch = Channel.of(params.test_parameters.greeting)
    sayHello(params.test_parameters.greeting)
}
