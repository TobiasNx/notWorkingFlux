default infile = FLUX_DIR + "mods.xml";


infile
| open-file
| decode-xml
| handle-generic-xml
| morph(FLUX_DIR + "all.xml")
| encode-json
| write(FLUX_DIR + "resultNEsted.json")
;
