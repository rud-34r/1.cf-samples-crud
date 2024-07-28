namespace movie.data.base;

entity Movies {
    key movieID     : UUID;
        title       : String ;
        plot        : String;
        runtime     : Time;
        releasedate : Date;
        language    : String;
        ratings     : Composition of many Ratings
                          on ratings.movie = $self;
}


entity Ratings {
    key ratingID : UUID;
        movie    : Association to Movies;
        source   : String;
        rating   : Integer @asset.range: [
            0,
            10
        ]
}
