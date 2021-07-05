default infile = FLUX_DIR + "testArray2hirachies.json";


infile
| open-file
| as-records
| decode-json
| morph(FLUX_DIR + "allNested.xml")
| encode-json(prettyPrinting="true")
| write(FLUX_DIR + "nestedHirachy.json");