Dieses Repo hat einen Beispielfall bei dem eine verschachtelte Struktur eines MODS-Records durch `_elseNested` auf zwei Hierarchie-Ebenen reduziert wird.

Morph-file ist `all.xml`
Beispielrecord ist `mods.xml`

 `modsAttributesFixNested2JSON.flux` ausführen. (`modsAttributesFixNested.flux` encoded wieder in XML und hat zum Vergleich der Flux gedient. Der Fehler liegt nicht am einem encoding, sondern an `_elseNested`
