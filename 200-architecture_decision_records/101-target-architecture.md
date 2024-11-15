# Target Architecture
The architecture presented, focuses only on the Use of the AI assistant for retrieving information on Orders, Order Status and Product Availability in context of the Web Application.
Out of scope is the Webshop itself, where the orders can be placed.

This section describes the target software architecture described according [C4 Model](https://c4model.com).
Please note that all views are documented in C4 model style, although only System Context, Container and dynamic views are presented. The most diagrams use informal notation style. All diagrams are supplied with a key explaining meaning of each shape on the diagram.
### System Context
The system context diagram below depicted key Functionalities and interface to endusers and their dependencies.
The super simplified model shows 3 core components, which will be described in more detail later on. 

![System Context](/800-assets/C1.jpg "System Context")

```mermaid
    C4Context
    Person_Ext(cust, "Customer", "A person who buys<br>products from ShopWise ")
     Boundary(a0,"e-Commerce Webshop") {  
        Container(webApp, "Web Application","HTML & Python","Provides Order<br> & Invoice Information")
        Container(ai, "AI API","Python","RAG AI Function<br>for question Question to<br> Query Transformation")
        ContainerDb(db, "Database", "MongoDb","Holds product and order data")
    
        Rel(ai,db, "Uses")
        Rel(webApp, ai, "Uses")
        Rel(cust,webApp,"Uses WebApp for<br> information Retrieval<br> Orders and Invoices")

     }  
        UpdateRelStyle(cust, webApp, $offsetX="-100", $offsetY="-50)
        UpdateLayoutConfig($c4ShapeInRow="1", $c4BoundaryInRow="10")
```
```mermaid 
    C4Context      
    Boundary(b20, "Key", "Legend") {
        Person_Ext(perExt,,)
        System(app, "Application")
        SystemDb(db1, "NoSQL Database")
    }
UpdateLayoutConfig($c4ShapeInRow="6", $c4BoundaryInRow="1")
```
