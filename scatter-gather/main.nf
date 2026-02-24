nextflow.enable.dsl=2
 
include { sort } from './modules/sort.nf'
include { split } from './modules/split.nf'
include { merge } from './modules/merge.nf'
 
 
params.myinput = "test.test"
 
workflow {
    input_ch = Channel.fromPath(params.myinput)
    split(input_ch)
    sort(split.out.flatten())
    merge(sort.out.collect())
}
