"testArray.json"
| open-file
| as-records
| decode-json
| morph("all.xml")
| encode-json(prettyPrinting="true")
| write("stdout");