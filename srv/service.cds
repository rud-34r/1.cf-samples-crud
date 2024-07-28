using {movie.data.base as mdb} from '../db/schema';

service Catalog {
    @odata.draft.enabled
    entity Movies @(restrict: [{
        grant: '*',
        to   : 'Admin'
    }])            as projection on mdb.Movies;

    entity Ratings as projection on mdb.Ratings;
}
