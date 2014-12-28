<cfset objSWAPI = new com.coldfumonkeh.SWAPI() />

<cfdump var="#objSWAPI#" />

<cfdump var="#objSWAPI.getFilms(json=false)#" />
