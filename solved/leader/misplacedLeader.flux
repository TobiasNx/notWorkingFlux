default infile = FLUX_DIR + "1196308691_marcxml.mrcx";


infile|
open-file|
decode-xml|
handle-generic-xml|
morph(FLUX_DIR + "allNested.xml")|
encode-xml|
write(FLUX_DIR + "marcOut6.xml");