using { managed } from '@sap/cds/common';           // Estou importanto os Aspects desse link e escolhi o **Managed**. Posso clicar no link pra ver o que tem dentro dele.

namespace sales;            // Aqui adiciono o namespace sales

entity SalesOrderHeaders: managed {         // Quando coloquei o Aspect **Managed** ali em cima, preciso informar quem será "Manager" e aí aqui depois do nome da entidade coloco `: managed`
    key id: UUID;
        customer: Association to Customers;
        totalAmount: Decimal(15,2);
        items: Composition of many SalesOrderItems on items.header = $self;            // Estou dizendo que itens está dentro de Headers, como filha. Também estou dizendo que posso ter vários Items dentro de um Headers ("of many") e escrevi "Items" no plural.
}

entity SalesOrderItems {
    key id: UUID;
        header: Association to SalesOrderHeaders;           // Essa é filha do Headers. Nela falo da Association. Na outra coloco a Composition.
        product: Association to Products;
        quantity: Integer;
        price: Decimal(15,2);
}

entity Customers {
    key id: UUID;
        firtsName: String(20);
        lastName: String(100);
        email: String(255);
}

entity Products {
    key id: UUID;
        name: String(255);
        price: Decimal(15,2);
}


