using { managed } from '@sap/cds/common';           // Estou importanto os Aspects desse link e escolhi o **Managed**. Posso clicar no link pra ver o que tem dentro dele.

namespace sales;            // Aqui adiciono o namespace sales

entity SalesOrderHeaders: managed {         // Quando coloquei o Aspect **Managed** ali em cima, preciso informar quem será "Manager" e aí aqui depois do nome da entidade coloco `: managed`
    key id: UUID;
}

