default infile = FLUX_DIR + "marc.xml";


infile|
open-file|
decode-xml|
handle-marcxml|
morph(FLUX_DIR + "allNested.xml")|
encode-marcxml|
write(FLUX_DIR + "marcOut.xml");