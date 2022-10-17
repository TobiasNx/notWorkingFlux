default infile = FLUX_DIR + "animalStart.json";


infile
| open-file
| as-records
| decode-json
| morph(FLUX_DIR + "lookup1.xml")
| encode-json(prettyPrinting="true")
| write(FLUX_DIR + "animal1.json");