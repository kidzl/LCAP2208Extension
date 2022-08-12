using { LCAP2208Extension as my } from '../db/schema';

@path : 'service/LCAP2208Extension'
service LCAP2208ExtensionService
{
    entity Categories as
        projection on my.Categories
        {
            *
        };
}

annotate LCAP2208ExtensionService with @requires :
[
    'authenticated-user'
];
