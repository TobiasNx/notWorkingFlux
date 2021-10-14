default infile = FLUX_DIR + "label.yaml";


infile
| open-file
| as-records
| decode-yaml
| flatten
//| morph(FLUX_DIR + "uniqueFields.xml") //This MORPH unqiues the fields in a record.
|	stream-to-triples
| count-triples(countBy="PREDICATE")
| sort-triples(By="SUBJECT")
| template("${o}\t${s}")
| write("stdout")
;
