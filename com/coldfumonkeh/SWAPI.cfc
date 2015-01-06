/**
* Name: SWAPI.cfc
* Author: Matt Gifford (http://www.monkehworks.com)
* Date: 28th December 2014
* Copyright 2014 Matt Gifford.
*
* All rights reserved.
* Product and company names mentioned herein may be trademarks or trade names of their respective owners.
* Subject to the conditions below, you may, without charge:
* Use, copy, modify and/or merge copies of this software and associated documentation files (the 'Software')
* Any person dealing with the Software shall not misrepresent the source of the Software.
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED,
* INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A
* PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
* HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
* OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
* SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
*
*
* Got a lot out of this package? Saved you time and money?
* Share the love and visit the wishlist: http://www.amazon.co.uk/wishlist/B9PFNDZNH4PY
**/

component accessors="true" {

	property name="api_base"			type="string";

	public function init ()
	{
		setApi_base('http://swapi.co/api/');
		return this;
	}

	/****************/
	/* METHODS      */
	/****************/

	/* Root */

	/**
	* hint - Returns all available resource endpoints for your reference
	* @json If set to false (default) ColdFusion will return a struct of data. If true the 'natural' JSON response will be returned.
	**/
	public any function getResources(
			boolean json = false
		)
	{
			return makeRequest(url=getApi_base(), json=arguments.json);
	}


	/* People */

	/**
	* hint - Returns all available people within the API. Paginated results may be available.
	* @page Numeric page number to handle paginated results.
	* @json If set to false ColdFusion will return a struct of data. If true (default) the 'natural' JSON response will be returned.
	**/
	public any function getPeople(
			numeric page = 1,
			boolean json = false
		)
	{
		return makeRequest(url=getApi_base() & 'people/?page=' & arguments.page, json=arguments.json);
	}

	/**
	* @id - The numeric ID of the person to obtain information for.
	* @json If set to false ColdFusion will return a struct of data. If true (default) the 'natural' JSON response will be returned.
	**/
	public any function getPerson(
			required numeric id,
			boolean json = false
		)
	{
		return makeRequest(url=getApi_base() & 'people/' & arguments.id, json=arguments.json);
	}




	/* Films */

	/**
	* hint - Returns all available films within the API. Paginated results may be available.
	* @page Numeric page number to handle paginated results.
	* @json If set to false ColdFusion will return a struct of data. If true (default) the 'natural' JSON response will be returned.
	**/
	public any function getFilms(
			numeric page = 1,
			boolean json = false
		)
	{
		return makeRequest(url=getApi_base() & 'films/?page=' & arguments.page, json=arguments.json);
	}

	/**
	* @id - The numeric ID of the film to obtain information for.
	* @json If set to false ColdFusion will return a struct of data. If true (default) the 'natural' JSON response will be returned.
	**/
	public any function getFilm(
		required numeric id,
		boolean json = false
	)
	{
		return makeRequest(url=getApi_base() & 'films/' & arguments.id, json=arguments.json);
	}



	/* Starships */

	/**
	* hint - Returns all available starships within the API. Paginated results may be available.
	* @page Numeric page number to handle paginated results.
	* @json If set to false ColdFusion will return a struct of data. If true (default) the 'natural' JSON response will be returned.
	**/
	public any function getStarships(
			numeric page = 1,
			boolean json = false
		)
	{
		return makeRequest(url=getApi_base() & 'starships/?page=' & arguments.page, json=arguments.json);
	}

	/**
	* @id - The numeric ID of the starship to obtain information for.
	* @json If set to false ColdFusion will return a struct of data. If true (default) the 'natural' JSON response will be returned.
	**/
	public any function getStarship(
		required numeric id,
		boolean json = false
	)
	{
		return makeRequest(url=getApi_base() & 'starships/' & arguments.id, json=arguments.json);
	}



	/* Vehicles */

	/**
	* hint - Returns all available vehicles within the API. Paginated results may be available.
	* @page Numeric page number to handle paginated results.
	* @json If set to false ColdFusion will return a struct of data. If true (default) the 'natural' JSON response will be returned.
	**/
	public any function getVehicles(
			numeric page = 1,
			boolean json = false
		)
	{
		return makeRequest(url=getApi_base() & 'vehicles/?page=' & arguments.page, json=arguments.json);
	}

	/**
	* @id - The numeric ID of the vehicle to obtain information for.
	* @json If set to false ColdFusion will return a struct of data. If true (default) the 'natural' JSON response will be returned.
	**/
	public any function getVehicle(
		required numeric id,
		boolean json = false
	)
	{
		return makeRequest(url=getApi_base() & 'vehicles/' & arguments.id, json=arguments.json);
	}




	/* Species */

	/**
	* hint - Returns all available species within the API. Paginated results may be available.
	* @page Numeric page number to handle paginated results.
	* @json If set to false ColdFusion will return a struct of data. If true (default) the 'natural' JSON response will be returned.
	**/
	public any function getAllSpecies(
			numeric page = 1,
			boolean json = false
		)
	{
		return makeRequest(url=getApi_base() & 'species/?page=' & arguments.page, json=arguments.json);
	}

	/**
	* @id - The numeric ID of the species to obtain information for.
	* @json If set to false ColdFusion will return a struct of data. If true (default) the 'natural' JSON response will be returned.
	**/
	public any function getSpecies(
		required numeric id,
		boolean json = false
	)
	{
		return makeRequest(url=getApi_base() & 'species/' & arguments.id, json=arguments.json);
	}




	/* Planets */

	/**
	* hint - Returns all available planets within the API. Paginated results may be available.
	* @page Numeric page number to handle paginated results.
	* @json If set to false ColdFusion will return a struct of data. If true (default) the 'natural' JSON response will be returned.
	**/
	public any function getPlanets(
			numeric page = 1,
			boolean json = false
		)
	{
		return makeRequest(url=getApi_base() & 'planets/?page=' & arguments.page, json=arguments.json);
	}

	/**
	* @id - The numeric ID of the planet to obtain information for.
	* @json If set to false ColdFusion will return a struct of data. If true (default) the 'natural' JSON response will be returned.
	**/
	public any function getPlanet(
		required numeric id,
		boolean json = false
	)
	{
		return makeRequest(url=getApi_base() & 'planets/' & arguments.id, json=arguments.json);
	}


	/*
	* @resource The name of the resource to obtain the schema for. One of: people, films, starships, vehicles, species or planets.
	* @json If set to false ColdFusion will return a struct of data. If true (default) the 'natural' JSON response will be returned.
	**/
	public any function getSchema(
			required string resource,
			boolean json = false
		)
	{
		return makeRequest(url=getApi_base() & resource & '/schema', json=arguments.json);
	}


	/****************/
	/* UTILS        */
	/****************/


	private any function makeRequest(
			required string url,
			string method = "GET",
			boolean json = false
		)
	{
		var httpService = new http(url=arguments.url, method=arguments.method);
		var request = httpService.send().getPrefix();
		if ( json ) {
			return request.FileContent.toString();
		} else {
			if ( len(request.FileContent.toString()) ) {
				return deserializeJSON(request.FileContent);
			} else {
				return request.FileContent.toString();
			}
		}
	}

}
