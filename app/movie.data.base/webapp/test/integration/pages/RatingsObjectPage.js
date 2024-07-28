sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'movie.data.base',
            componentId: 'RatingsObjectPage',
            contextPath: '/Movies/ratings'
        },
        CustomPageDefinitions
    );
});