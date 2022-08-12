namespace LCAP2208Extension;

using { ah1_gwsamplebasic } from '../srv/external/ah1_gwsamplebasic.cds';

using sap.workflow from './WorkflowObject';

using
{
    Country,
    Currency,
    Language,
    User,
    cuid,
    extensible,
    managed,
    temporal
}
from '@sap/cds/common';

entity Categories
{
    key CategoryID : Integer;
    CategoryName : String(100);
    Description : String(100);
}

entity comments
{
    key commentID : UUID
        @Core.Computed;
    comment : String(100);
    productSet : Association to one ah1_gwsamplebasic.ProductSet;
}

entity notes
{
    key ID : UUID
        @Core.Computed;
    notes : String(100);
    rate : Integer;
    productSet : Association to one ah1_gwsamplebasic.ProductSet;
}

extend ah1_gwsamplebasic.ProductSet
{
    notes : Association to many notes on notes.productSet = $self;
    comments : Association to one comments on comments.productSet = $self;
}
