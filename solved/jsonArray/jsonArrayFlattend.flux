default infile = FLUX_DIR + "testArray.json";


infile
| open-file
| as-records
| decode-json
| morph(FLUX_DIR + "allFlattend.xml")
| encode-json(prettyPrinting="true")
| write(FLUX_DIR + "flattendNeu.json");