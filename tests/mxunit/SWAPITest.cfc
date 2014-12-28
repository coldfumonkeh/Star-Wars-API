component extends="mxunit.framework.TestCase" {

  public any function setup() {
		variables.swapi	=	new swapi.com.coldfumonkeh.SWAPI();
		//return this;
	}

	public any function apiURLBaseIsCorrect() {
		var apiEndpoint = variables.swapi.getApi_base();
		assertEquals('http://swapi.co/api/', apiEndpoint);
	}

  public any function getFilmsReturnsJSON() {
    var response = variables.swapi.getFilms();
    assertTrue(isJSON(response));
  }

  public any function getFilmsReturnsStruct() {
    var response = variables.swapi.getFilms(json=false);
    assertTrue(isStruct(response));
    assertTrue(structKeyExists(response, 'count'));
    assertTrue(structKeyexists(response, 'results'));
    assertTrue(isArray(response.results));
  }

  public any function getSpecificFilmReturnsCorrectly() {
    var response = variables.swapi.getFilm(id=1, json=false);
    assertTrue(isStruct(response));
    assertEquals(response.director, "George Lucas");
    assertEquals(response.episode_id, "4");
    assertTrue(isArray(response.characters));
  }

}
