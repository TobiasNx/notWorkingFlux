default infile = FLUX_DIR + "animal2.json";


infile
| open-file
| as-records
| decode-json
| morph(FLUX_DIR + "lookup3.xml")
| encode-json(prettyPrinting="true")
| write(FLUX_DIR + "animal3.json");