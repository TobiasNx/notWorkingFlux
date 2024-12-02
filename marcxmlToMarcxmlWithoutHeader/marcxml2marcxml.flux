// hat namespace
default infile1 = FLUX_DIR + "1196308691_marcxml1.mrcx";

// hat namespace
default infile2 = FLUX_DIR + "1196308691_marcxml2.mrcx";



infile1|
open-file|
decode-xml|
handle-marcxml|
encode-marcxml|
write(FLUX_DIR + "testResult1.xml");

infile2|
open-file|
decode-xml|
handle-marcxml|
encode-marcxml|
write(FLUX_DIR + "testResult2.xml");