default infile = FLUX_DIR + "test.txt";

infile
| open-file
| as-lines
|decode-formeta
|morph(FLUX_DIR + "error.xml")
|encode-xml(rootTag="collection")
| write(FLUX_DIR + "result.xml");