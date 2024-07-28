using Catalog as service from '../../srv/service';

annotate service.Movies with @(
    UI.HeaderInfo : {
        Title : {
            $Type : 'UI.DataField',
            Value : title,
        },
        TypeName : '',
        TypeNamePlural : '',
    }
);
annotate service.Movies with @(
    UI.HeaderFacets : [],
    UI.FieldGroup #MovieInformation : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : title,
                Label : 'Title',
            },
            {
                $Type : 'UI.DataField',
                Value : releasedate,
                Label : 'Release Date',
            },
            {
                $Type : 'UI.DataField',
                Value : runtime,
                Label : 'Runtime',
            },],
    }
);
annotate service.Movies with @(
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Movie Details',
            ID : 'MovieDetails',
            Target : '@UI.FieldGroup#MovieDetails',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Plot Information',
            ID : 'Plot',
            Target : '@UI.FieldGroup#Plot',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'User Ratings',
            ID : 'UserRatings',
            Target : 'ratings/@UI.LineItem#UserRatings',
        },
    ],
    UI.FieldGroup #Plot : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : language,
                Label : 'Language',
            },
            {
                $Type : 'UI.DataField',
                Value : plot,
                Label : 'Plot',
            },],
    }
);
annotate service.Ratings with @(
    UI.LineItem #UserRatings : [
        {
            $Type : 'UI.DataField',
            Value : source,
            Label : 'Source',
        },
        {
            $Type : 'UI.DataField',
            Value : rating,
            Label : 'Rating',
        },]
);
annotate service.Movies with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : title,
            Label : 'Title',
        },
        {
            $Type : 'UI.DataField',
            Value : language,
            Label : 'Language',
        },
        {
            $Type : 'UI.DataField',
            Value : releasedate,
            Label : 'Release Date',
        },
    ]
);
annotate service.Movies with @(
    UI.FieldGroup #MovieDetails : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : title,
                Label : 'Title',
            },
            {
                $Type : 'UI.DataField',
                Value : releasedate,
                Label : 'Release Date',
            },
            {
                $Type : 'UI.DataField',
                Value : runtime,
                Label : 'Run Time',
            },],
    }
);
