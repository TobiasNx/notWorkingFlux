default infile = FLUX_DIR + "animal1.json";


infile
| open-file
| as-records
| decode-json
| morph(FLUX_DIR + "lookup2.xml")
| encode-json(prettyPrinting="true")
| write(FLUX_DIR + "animal2.json");