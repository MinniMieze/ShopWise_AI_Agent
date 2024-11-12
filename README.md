# ai-katas 2024

# Welcome to ShopWise Solutions
ShopWise Solutions is an innovative and fast-growing e-commerce company based in Austin, Texas, USA. Our online platform hosts a wide range of consumer products, spanning electronics, apparel, home goods, and much more. ShopWise Solutions has built a reputation for exceptional customer experience, streamlined order fulfillment, and a diverse catalog of quality products.
## Problem Description
ShopWise Solutions is now expanding into the realm of AI-driven customer service and is in need of a new AI-powered product support assistant for our online store. This assistant will serve as the first line of support for customer inquiries regarding products, orders, returns, and refunds, all by interfacing with our existing e-commerce database.

The assistant should be able to handle customer inquiries related to products and orders. It should be capable of natural language understanding, database integration, personalized responses, multi-turn dialogues, and avoidance of hallucinations. Additionally, it should be able to manage orders and track their status.
## Requirements
* ShopAssistant AI capabilities:
* Natural Language Understanding
* Database Integration
* Personalized Responses
* Multi-Turn Dialogues
* Avoidance of hallucinations
* Order Management
<br>

### System Context Shopwise Webshop
```mermaid
    C4Context
       Person_Ext(customerA, "Customer", "Person interacting with the AI Customer Support Assistant")
        
        Enterprise_Boundary(ShopWise, "ShopWise E-Commerce Webshop") {
          System(Portal, "Webshop Portal", "Webshop Interface for Customers")
          
          System(AI, "AI-Support-Service", "Gets Customer Query to be transformed and executed against the Database")
        
          SystemDb(E-DB, "E-Commerce DB", "Stores all Products and Orders incl. Orderhandling status")
        }
    Rel(customerA,Portal,"Inputs Query","Natural Language English")
    UpdateRelStyle(customerA, Portal, $textColor="blue", $offsetX="-40", $offsetY="-50")

    Rel(AI, Portal, "Transforms <br>Query<br> in SQL Result","NLP / ML/AI")
    UpdateRelStyle(AI, Portal, $textColor="blue", $offsetX="-60", $offsetY="-40")   

    Rel(AI,E-DB,"Gets Data from <br>Database","NoSQL")
    UpdateRelStyle(AI, E-DB, $textColor="blue", $offsetY="-40", $offsetX="-45")

    UpdateLayoutConfig($c4ShapeInRow="3", $c4BoundaryInRow="1")   
```