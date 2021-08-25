default infile = FLUX_DIR + "mods.xml";


infile
| open-file
| decode-xml
| handle-generic-xml(emitnamespace="true")
| encode-xml
| write(FLUX_DIR + "result.xml")
;
