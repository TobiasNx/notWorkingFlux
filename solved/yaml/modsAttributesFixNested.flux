default infile = FLUX_DIR + "label.yaml";


infile
| open-file
| as-records
| decode-yaml
| encode-json
| write(FLUX_DIR + "result.json")
;
