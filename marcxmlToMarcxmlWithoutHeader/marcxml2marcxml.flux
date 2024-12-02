// hat namespace
default infile1 = FLUX_DIR + "1196308691_marcxml1.mrcx";

// hat keinen namespace
default infile2 = FLUX_DIR + "1196308691_marcxml2.mrcx";



infile1| //mit ns
open-file|
decode-xml|
handle-marcxml|
encode-marcxml|
write(FLUX_DIR + "testResult1.xml");

infile2| //ohne ns
open-file|
decode-xml|
handle-marcxml|
encode-marcxml|
write(FLUX_DIR + "testResult2.xml");


infile1| //mit ns 
open-file|
decode-xml|
handle-marcxml(ignoreNamespace="true")|
encode-marcxml|
write(FLUX_DIR + "testResult3.xml");

infile2| //ohne ns
open-file|
decode-xml|
handle-marcxml(ignoreNamespace="true")|
encode-marcxml|
write(FLUX_DIR + "testResult4.xml");