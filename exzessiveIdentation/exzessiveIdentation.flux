"https://services.dnb.de/sru/zdb"
| open-sru(query="dnb.isil%3DDE-Sol1",RecordSchema="MARC21plus-xml",Version="1.1")
| decode-xml
| handle-generic-xml
| list-fix-paths
| print
;