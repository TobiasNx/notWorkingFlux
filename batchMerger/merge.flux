default infile = "map.tsv";


FLUX_DIR + infile
| open-file
| as-lines
| decode-csv(hasHeader="false",separator="\t")
| merge-batch-stream(batchSize="5")
| fix("join_field('1','+AND+')")
| encode-json
| write(FLUX_DIR + "test.json")
;
