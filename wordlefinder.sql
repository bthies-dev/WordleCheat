SELECT * FROM wordlist
inner join ngrams
on wordlist.source = ngrams.word
----CONFIRMED----
where first like '%'
and second like '%'
and third like '%'
and fourth like '%'
and fifth like '%'
----YELLOW LETTERS----
and source like '%%'
and source like '%%'
and source like '%%'
and source like '%%'
and source like '%%'
----POSITION ELIMINATION----
and first not like ''
and second not like ''
and third not like ''
and fourth not like ''
and fifth not like ''
and fifth not like ''
----GREY LETTERS----
and source not like '%.%'
and source not like '%.%'
and source not like '%.%'
and source not like '%.%'
and source not like '%.%'
and source not like '%.%'
and source not like '%.%'
and source not like '%.%'
and source not like '%.%'
and source not like '%.%'
and source not like '%.%'
and source not like '%.%'
ORDER by ngrams.ngramscore desc