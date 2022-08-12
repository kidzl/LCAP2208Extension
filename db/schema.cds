namespace LCAP2208Extension;

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
