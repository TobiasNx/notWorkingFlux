"https://raw.githubusercontent.com/metafacture/metafacture-core/master/metafacture-runner/src/main/dist/examples/read/marc21/10.marc21"
| open-http
| as-lines
| decode-marc21
| batch-reset(batchsize="1")
| encode-marcxml
| write(FLUX_DIR + "output/test-output-${i}.xml")
;