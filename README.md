# API PEGjs [![Build Status][2]][1]

A collection of PEG parsers for HTTP, API and related grammars, along with generators and functional components

**This is part of a bigger effort: [for-GET HTTP](https://github.com/for-GET/README).**


## Parsers

```coffee
apiPEG = require 'api-pegjs'

apiPEG.module.parser input
```

where `module.parser` can be

* http
  * header_field
  * message
  * method
  * request_line
  * request_target
  * status_code
  * status_line
  * version
  * headers
    * Accept
    * Accept_Charset
    * Accept_Encoding
    * Accept_Language
    * Allow
    * Connection
    * Content_Encoding
    * Content_Language
    * Content_Location
    * Content_Type
    * Date
    * Expect
    * From
    * Host
    * Location
    * Max_Forwards
    * Referer
    * Retry_After
    * Server
    * TE
    * Tranfer_Encoding
    * Upgrade
    * User_Agent
    * Vary
    * Via
* uri
* media_type
* charset
* language


## License

[UNLICENSE](LICENSE)


  [1]: https://travis-ci.org/for-GET/api-pegjs
  [2]: https://travis-ci.org/for-GET/api-pegjs.png
