"mods.xml"
| open-file
| as-records
| decode-xml
| handle-generic-xml
| encode-xml
| write(FLUX_DIR + "result.xml")
;
