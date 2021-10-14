default infile = FLUX_DIR + "mods.xml";


infile
| open-file
| decode-xml
| handle-generic-xml
| encode-xml
| write(FLUX_DIR + "resultNEsted.xml")
;
