default infile = "testMultiline.csv";


infile
| open-file
| as-records //as-lines only works with non-multiline as intended
| decode-csv(hasHeader="true")
| batch-log(batchSize="100000")
| encode-json
| write(FLUX_DIR + "test.json")
;
