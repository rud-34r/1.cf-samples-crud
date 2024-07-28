sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'movie/data/base/test/integration/FirstJourney',
		'movie/data/base/test/integration/pages/MoviesList',
		'movie/data/base/test/integration/pages/MoviesObjectPage',
		'movie/data/base/test/integration/pages/RatingsObjectPage'
    ],
    function(JourneyRunner, opaJourney, MoviesList, MoviesObjectPage, RatingsObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('movie/data/base') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheMoviesList: MoviesList,
					onTheMoviesObjectPage: MoviesObjectPage,
					onTheRatingsObjectPage: RatingsObjectPage
                }
            },
            opaJourney.run
        );
    }
);