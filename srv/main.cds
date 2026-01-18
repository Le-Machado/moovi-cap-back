using { sales } from '../db/schema';

service MainService {
    entity SalesOrderHeaders as projection on sales.SalesOrderHeaders;          // Esse já contém o Items, porque é filho dela. Não é comum expor as entidades filhas.
    entity Customers as projection on sales.Customers;
    entity Products as projection on sales.Products;
}