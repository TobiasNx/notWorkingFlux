Ausgangspunkt:

Wir rufen unten angezeigte JSON[1] über eine API ab. In dieser JSON gibt es das Elemen `"data"`, in dem Metadaten-Records drin sind.
Ziel ist es, diese einzelnen Datensätze für Metafacture als einzelne Records nutzbar zu machen.

`likeFinna.flux` versucht in einer vorgeschalteten Flux nur das Element `"data"` auszulesen und dann zu splitten.
Bisher scheitere ich aber an dem Umstand, dass die Werte (Array und Objekte) aus `"data"` entweder entweder überhaupt nicht, oder nur in flacher Form als einzelne Felder und nichtmehr zusammenhängende Objekte je Record ausgelesen werden. 



[1]
```
{
  "links": {
    "self": "https:\/\/imoox.at\/mooc\/local\/moochubs\/moochubs_v2.json",
    "first": "https:\/\/imoox.at\/mooc\/local\/moochubs\/moochubs_v2.json",
    "last": "https:\/\/imoox.at\/mooc\/local\/moochubs\/moochubs_v2.json"
  },
  "data": [
    {
      "id": "3",
      "type": "courses",
      "attributes": {
        "name": "\u201cMaking\u201d - Kreatives digitales Gestalten mit Kindern",
        "courseCode": "3",
        "courseMode": "MOOC",
        "abstract": "",
        "description": "\"Making\" - der offene Online-Kurs zum kreativen digitalen Gestalten und Experimentieren mit Kindern ist eine siebenw\u00f6chige Einf\u00fchrung in unterschiedliche Making-Werkzeuge und -Aktivit\u00e4ten f\u00fcr Kinder in der Schule und Kinderarbeit. Handlungsorientiert und praxisnah werden ausgew\u00e4hlte Werkzeuge der Making-Bewegung vorgestellt und von Expertinnen konkrete Beispiele f\u00fcr ihren Einsatz gegeben sowie Herausforderungen und Tipps genannt. Geplant sind so die Vorstellung von ausgew\u00e4hlten Unterrichts- oder Workshopszenarien f\u00fcrs Programmieren, Roboterbauen oder 3D-Drucken. Der Kurs wendet sich dabei explizit an Einsteiger\/innen, d.h. Personen, die selbst noch keine Erfahrungen mit den Werkzeugen haben.",
        "languages": [
          "de"
        ],
        "startDate": "2015-10-19T12:00:00+02:00",
        "availableUntil": null,
        "endDate": "2015-12-06T11:00:00+01:00",
        "image": {
          "url": "https:\/\/imoox.at\/mooc\/pluginfile.php\/15775\/course\/overviewfiles\/Making.jpg",
          "licenses": [
            {
              "id": "CC0-1.0",
              "url": "https:\/\/creativecommons.org\/publicdomain\/zero\/1.0\/",
              "name": "Creative Commons Zero v1.0 Universal"
            }
          ]
        },
        "video": {
          "url": "https:\/\/www.youtube.com\/watch?v=DljC8FPpE1s",
          "licenses": [
            {
              "url": "https:\/\/creativecommons.org\/licenses\/by-sa\/4.0\/"
            }
          ]
        },
        "instructors": [
          {
            "name": "Sandra Sch\u00f6n &amp; Martin Ebner",
            "image": null,
            "description": "Dr. Sandra Sch\u00f6n forscht bei der Salzburg Research Forschungsgesellschaft im Innovation Lab zu innovativen Formen des Lernens und Arbeiten mit dem Internet. Beim gemeinn\u00fctzigen BIMS e.V. hat sie zudem mehrere medienp\u00e4dagogische Praxisprojekte durchgef\u00fchrt, aktuell die \"Maker Days for Kids im April 2015\". Mehr zu ihrer Arbeit hier: http:\/\/sandra-schoen.deUniv. Doz. DI Dr. techn. Martin Ebner lehrt und forscht als habilitierter Medieninformatiker zu Themen rund um das technologiegest\u00fctzte Lehren und Lernen, oftmals kurz als e-Learning bezeichnet. Hier besch\u00e4ftigt er sich besonders mit mobilem Lernen, den Auswirkungen von Social Media und Learning Analytics und gilt als gro\u00dfer Vertreter von Open Educational Resources. Mehr zu seiner Arbeit hier: http:\/\/martinebner.at"
          }
        ],
        "learningobjectives": [
          "Der Kurs ist als Einstieg f\u00fcr all diejenigen gedacht, die sich f\u00fcr die Making-Bewegung bzw. ihre Umsetzung in der Schule und Kinderarbeit interessieren, und dabei die konkrete Nutzung einzelner, ausgew\u00e4hlter Werkzeuge exemplarisch kennen lernen m\u00f6chten."
        ],
        "duration": "P7W",
        "partnerInstitute": [
          {
            "name": "Technische Universit\u00e4t Graz"
          }
        ],
        "moocProvider": {
          "name": "iMooX",
          "url": "https:\/\/imoox.at\/",
          "logo": "https:\/\/imoox.at\/mooc\/theme\/imoox\/pix\/imoox_logo.png"
        },
        "url": "https:\/\/imoox.at\/course\/maker",
        "workload": 1,
        "courseLicenses": [
          {
            "url": "https:\/\/creativecommons.org\/licenses\/by-sa\/4.0\/"
          }
        ],
        "access": [
          "free"
        ]
      }
    },
		...
	]
}
```

