default infile = FLUX_DIR + "1196308691_marcxml.mrcx";


infile|
open-file|
decode-xml|
handle-marcxml|
morph(FLUX_DIR + "allNested.xml")|
encode-marcxml(emitNamespace="false")|
write(FLUX_DIR + "marcOut6.xml");