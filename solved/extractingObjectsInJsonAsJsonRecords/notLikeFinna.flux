"https://imoox.at/mooc/local/moochubs/classes/webservice.php"
| open-http(accept="application/json")
| as-lines //as-records und as-formeta-records kommen zum gleichen Ergebnis
| decode-json(arrayname="*")
| flatten
//| morph(FLUX_DIR + "uniqueFields.xml") //This MORPH unqiues the fields in a record.
|	stream-to-triples
| count-triples(countBy="PREDICATE")
| sort-triples(By="SUBJECT")
| template("${o}\t${s}")
| write(FLUX_DIR + "result.txt")
;