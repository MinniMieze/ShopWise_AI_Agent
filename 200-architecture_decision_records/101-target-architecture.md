# Target Architecture
The architecture presented, focuses only on the Use of the AI assistant for retrieving information on Orders, Order Status and Product Availability in context of the Web Application.

This section describes the target software architecture described according [C4 Model](https://c4model.com).
Please note that all views are documented in C4 model style, although only System Context, Container and dynamic views are presented. The most diagrams use informal notation style. All diagrams are supplied with a key explaining meaning of each shape on the diagram.
### System Context (C1)
The system context diagram below depicted key Functionalities and interface to endusers and their dependencies.
The super simplified model shows 3 core components, which will be described in more detail later on. 

![System Context](/800-assets/C1.jpg "System Context")

<br>

### Process Flow for interacting with ShopWise App on System Context level (C1)
```mermaid
    sequenceDiagram
        Customer-->>WebPortal: Authenticate & Question
        WebPortal -->> AI_Assistant : Interpret Question
        AI_Assistant -->> E-Database : Send SQL Query
        E-Database -->> AI_Assistant : Retieve Result
        AI_Assistant -->> WebPortal : Render Page
        WebPortal-->>Customer: View page & Logout user
```
### Assumptions
* **ASM-1:** A Customer Authentication Service is already inplace, which will be re-used.
* **ASM-2:** The WebShop Product Ordering Service is out of scope for this AI-Kata's enhancement.

