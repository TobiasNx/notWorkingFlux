default infile = FLUX_DIR + "1196308691_marcxml.mrcx";


infile|
open-file|
decode-xml|
handle-marcxml|
encode-marcxml|
write(FLUX_DIR + "test.xml");