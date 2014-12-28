[![Build Status](https://travis-ci.org/coldfumonkeh/Star-Wars-API.svg?branch=master)](https://travis-ci.org/coldfumonkeh/Star-Wars-API)

# Star Wars API ColdFusion Wrapper

---

This is a ColdFusion Wrapper written to interact with the [Star Wars API](http://swapi.co/).

## Authors

Developed by Matt Gifford (aka coldfumonkeh)

- http://www.monkehworks.com


### Share the love

Got a lot out of this package? Saved you time and money?

Share the love and visit Matt's wishlist: http://www.amazon.co.uk/wishlist/B9PFNDZNH4PY

---

## Requirements

This component requires ColdFusion 9+


## Getting Started

You will need to instantiate the component to gain access to the methods:

    objSWAPI = new com.coldfumonkeh.SWAPI();


The following methods will then be available for you to use:

* **getResources()** - returns a list of available endpoints / resources within the API.
* **getPeople([page])** - returns paginated results of all available characters.
* **getPerson(id)** - returns a specific character
* **getFilm(id)** - Returns one film.
* **getFilms([page])** - Returns all films, paged. Defaults to page 1.
* **getPlanet(id)** - Returns a planet.
* **getPlanets([page])** - Returns all plaents, paged. Defaults to page 1.
* **getSpecies(id)** - Returns one species.
* **getAllSpecies([page])** - Returns all species, paged. Defaults to page 1.
* **getStarship(id)** - Returns a starship.
* **getStarships([page])** - Returns all starships, paged. Defaults to page 1.
* **getVehicle(id)** - Returns a vehicle.
* **getVehicles([page])** - Returns all vehicles, paged. Defaults to page 1.
* **getSchema(resource)** - Returns the details JSON schema for the specific resource.


By default **ALL** methods will return 'natural' JSON strings. If you wanted to receive a ColdFusion structure you simply need to pass in a boolean value to each method like so:

    var stuPlanets = objSWAPI.getPlanets(json=false);

This will process the API response and return deserialized JSON for you.
