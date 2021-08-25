default infile = FLUX_DIR + "mods.xml";


infile
| open-file
| decode-xml
| handle-generic-xml
| encode-json
| write(FLUX_DIR + "result.json", header="[\n", footer="\n]", separator=",\n")
;
