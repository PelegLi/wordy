# README

## Assumptions:

* Assuming all words are letters based (no numbers or special characters)
* Assuming words are case insensitive
* Assuming local redis server running for persistence


## API examples:
```
curl GET 'localhost:3000/words/statistics/ipsum’
curl POST 'localhost:3000/words/counter/payload' --header 'Content-Type: application/json' --data-raw '{"source": "Hi! My name is(what?), my name is:(who?), my name is Slim Shady"}'
curl POST 'localhost:3000/words/counter/file’ --header 'Content-Type: application/json' --data-raw '{"source": "public/robots.txt”}'
curl POST 'localhost:3000/words/counter/url’ --header
 'Content-Type: application/json' --data-raw '{"source": "http://www.lancsngfl.ac.uk/cmsmanual/download/file/LoremIpsum.txt"}'
 ```