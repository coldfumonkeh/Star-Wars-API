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

**getResources()**

This method returns a list of available endpoints / resources within the API.

**getPeople([page])**

This method returns paginated results of all available characters.

**getPerson(id)**

This method returns a specific character from the API.

**getFilm(id)**

This method returns a specific film from the API.

**getFilms([page])**

This method returns all films, paged. Defaults to page 1.


**getPlanet(id)**

This method returns a specific planet from the API.


**getPlanets([page])**

This method returns all planets, paged. Defaults to page 1.


**getSpecies(id)**

This method returns a specific species from the API.


**getAllSpecies([page])**

This method returns all species, paged. Defaults to page 1.


**getStarship(id)**

This method returns a specific starship from the API.


**getStarships([page])**

This method returns all starships, paged. Defaults to page 1.


**getVehicle(id)**

This method returns a specific vehicle from the API.


**getVehicles([page])**

This method returns all vehicles, paged. Defaults to page 1.


**getSchema(resource)**

This method returns the detailed JSON schema for the specific resource.

    var planetSchema = objSWAPI.getSchema('planets');
    var vehicleSchema = objSWAPI.getSchema('vehicles');


By default **ALL** methods will return a ColdFusion structure of data.
If you wanted to receive the 'natural' JSON response you simply need to pass in a boolean value to each method like so:

    var stuPlanets = objSWAPI.getPlanets(json=true);

This will process the API response and ensure the JSON is not deserialized for you.



## Want to use a pure JavaScript solution instead?

Check out the [https://github.com/cfjedimaster/SWAPI-Wrapper](JavaScript wrapper) by [Ray Camden](http://raymondcamden.com)
