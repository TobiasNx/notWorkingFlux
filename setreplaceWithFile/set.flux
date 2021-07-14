default infile = FLUX_DIR + "title.json";


infile
| open-file
| as-records
| decode-json
| morph(FLUX_DIR + "noTitle.xml")
| encode-json(prettyPrinting="true")
| write(FLUX_DIR + "notitle.json");