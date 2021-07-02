Wenn man mit Metafacture XML transformiert, dann werden die Attribute eines Elements zu Unterfeldern. Der eigentliche Feldinhalt wird zum Unterfeld `value`. Encode XML kann dies nicht rückgängig machen. Zudem wir der mit Doppelpunkt vorgesetzte Namespace `mods:` zu einem übergeordneten Element gewechselt. [1]

Auch Elemente ohne Attribute erhalten eine verschachtelte Struktur. [2]

[1]
IN:
```
<mods:name type="personal" xlink:type="simple">
				<mods:displayForm>Armbruster, André</mods:displayForm>
				<mods:role>
					<mods:roleTerm authority="marcrelator" type="code">aut</mods:roleTerm>
				<mods:roleTerm authority="marcrelator" type="text">Author</mods:roleTerm></mods:role>
				<mods:nameIdentifier type="gnd">1081830107</mods:nameIdentifier>
				<mods:namePart type="family">Armbruster</mods:namePart>
				<mods:namePart type="given">André</mods:namePart>
			</mods:name>
```

OUT
```
<mods>
...
				<name>
					<type>personal</type>
					<type>simple</type>
					<displayForm>
						<value>Armbruster, André</value>
					</displayForm>
					<role>
						<roleTerm>
							<authority>marcrelator</authority>
							<type>code</type>
							<value>aut</value>
						</roleTerm>
						<roleTerm>
							<authority>marcrelator</authority>
							<type>text</type>
							<value>Author</value>
						</roleTerm>
					</role>
					<nameIdentifier>
						<type>gnd</type>
						<value>1081830107</value>
					</nameIdentifier>
					<namePart>
						<type>family</type>
						<value>Armbruster</value>
					</namePart>
					<namePart>
						<type>given</type>
						<value>André</value>
					</namePart>
				</name>
     ...
     </mods>
```

[2]
IN:
```
	<header>
		<identifier>oai:oer.uni-due.de:duepublico_mods_00074526</identifier>
		<datestamp>2021-07-01</datestamp>
		<setSpec>ddc:300</setSpec>
		<setSpec>doc-type:Sound</setSpec>
	</header>
```

OUT:
```
		<header>
			<identifier>
				<value>oai:oer.uni-due.de:duepublico_mods_00074526</value>
			</identifier>
			<datestamp>
				<value>2021-07-01</value>
			</datestamp>
			<setSpec>
				<value>ddc:300</value>
			</setSpec>
			<setSpec>
				<value>doc-type:Sound</value>
			</setSpec>
		</header>
```
