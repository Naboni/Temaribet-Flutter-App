> # Hands-on: Spliced mapping
>
> 1. **RNA STAR**: Map your reads on the reference genome with
>
>    - _"Single-end or paired-end reads"_: `Paired-end (as individual datasets)`
>    - _"RNA-Seq FASTQ/FASTA file, forward reads"_: the generated `trimmed reads pair 1` files (multiple datasets)
>    - _"RNA-Seq FASTQ/FASTA file, reverse reads"_: the generated `trimmed reads pair 2` files (multiple datasets)
>    - _"Custom or built-in reference genome"_: `Use a built-in index`
>    - _"Reference genome with or without an annotation"_: `use genome reference without builtin gene-model`
>    - _"Select reference genome"_: `Drosophila Melanogaster (dm6)`
>    - _"Gene model (gff3,gtf) file for splice junctions"_: the imported `Drosophila_melanogaster.BDGP6.87.gtf`
>    - _"Length of the genomic sequence around annotated junctions"_: `36`
>
>      This parameter should be length of reads - 1
>
> 2. Aggregate the STAR logs with - _"Which tool was used generate logs?"_: `STAR` - _"Type of FastQC output?"_: `Log` - _"STAR log output"_: the generated `log` files (multiple datasets)
