"https://raw.githubusercontent.com/gbv/Catmandu-Tutorial/master/data/marc.mrc"
| open-http
| as-lines
| decode-marc21
|   catch-stream-exception 
| encode-marc21
| write(FLUX_DIR + "test.mrc")
;