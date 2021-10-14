default infile = FLUX_DIR + "testJson.json";


infile
| open-file
| as-records
| decode-json
| encode-yaml
| write(FLUX_DIR + "result.json")
;
