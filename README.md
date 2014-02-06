# [lebowski.me](http://lebowski.me)
[![Build Status](https://travis-ci.org/aackerman/lebowski-api.png?branch=master)](https://travis-ci.org/aackerman/lebowski-api)

A small rails app for serving up information from [The Big Lebowski](http://en.wikipedia.org/wiki/The_Big_Lebowski)

## Routes

```
/api/script
/api/quotes/random
/api/quotes/search?term=that+poor+woman
/api/quotes/:id
/api/lines/search?term=mountain
/api/lines/random
/api/lines/:id
/api/search?term=mountain # alias for /api/quotes/search
```

## Using cURL

```shell
curl -L http://lebowski.me
```

## CLI client

[lebowski](https://github.com/aackerman/lebowski)

```shell
npm install -g lebowski
```

## Author

| [![twitter/_aaronackerman_](http://gravatar.com/avatar/c73ff9c7e654647b2b339d9e08b52143?s=70)](http://twitter.com/_aaronackerman_ "Follow @_aaronackerman_ on Twitter") |
|---|
| [Aaron Ackerman](https://twitter.com/_aaronackerman_) |
