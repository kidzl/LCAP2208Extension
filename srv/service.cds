using { ah1_gwsamplebasic } from './external/ah1_gwsamplebasic.cds';

using { LCAP2208Extension as my } from '../db/schema';

@path : 'service/LCAP2208Extension'
service LCAP2208ExtensionService
{
    entity Categories as
        projection on my.Categories
        {
            *
        };

    entity ProductSet as
        projection on ah1_gwsamplebasic.ProductSet
        {
            *
        };

    entity notes as
        projection on my.notes
        {
            *
        };

    entity comments as
        projection on my.comments
        {
            *
        };
}

annotate LCAP2208ExtensionService with @requires :
[
    'authenticated-user'
];
