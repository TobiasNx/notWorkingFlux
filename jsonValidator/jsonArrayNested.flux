default infile = FLUX_DIR + "kiCampus-metadata.json";


infile
| open-file
| as-lines
| validate-json("https://dini-ag-kim.github.io/amb/draft/schemas/schema.json", writeValid=FLUX_DIR + "valid.json", writeInvalid=FLUX_DIR + "invalid.json")
| print;