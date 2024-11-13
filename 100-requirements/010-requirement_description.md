# shopwise solutions

## problem description

- **architectural katas**
  - i am taking part in a competion to build an AI-powered product support assistant for an online store
  - the next few sections will provide more details about the competition
- **about shopwise solutions**
  - shopwise solutions is an innovative and fast-growing e-commerce company based in austin, texas, usa
  - our online platform hosts a wide range of consumer products, spanning electronics, apparel, home goods, and much more
  - shopwise solutions has built a reputation for exceptional customer experience, streamlined order fulfillment, and a diverse catalog of quality products
- **the objective**
  - shopwise solutions is now expanding into the realm of ai-driven customer service
  - we need a new ai-powered product support assistant for our online store
  - this assistant will serve as the first line of support for customer inquiries regarding products, orders, returns, and refunds
  - it will interface with our existing e-commerce database

## requirements

- **technical requirements**
  - the assistant should be able to handle customer inquiries related to products and orders
  - it should be capable of natural language understanding, database integration, personalized responses, multi-turn dialogues, and avoidance of hallucinations
  - it should also manage orders and track their status
- **documenting decisions**
  - consider architectural decision records as a way to capture decisions that you make
  - see `https://github.com/joelparkerhenderson/architecture-decision-record` for more details
  - pictures are fantastic for capturing architectural ideas, UI mockups, etc
  - remember, the judges can’t see what’s in your head
  - all they can go on is the assets you share
- **submission requirements**
  - a clear explanation of the tech stack chosen and architecture design
  - a set of instructions for installation and running the solution
  - documentation that explains key features, code structure, and how the solution meets the evaluation criteria

## evaluation scenarios

- **context understanding**
  - questions that test the model's ability to understand context, not just retrieve information
  - `prompt example 1`: "i see there are some sony tvs in your catalog. can you compare the features and prices between the sony kd75xf8596bu and other tv models you have?"
  - `prompt example 2`: "looking at the ratings distribution across different product categories, which category would you recommend for the most reliable purchases based on customer satisfaction?"
  - `prompt example 3`: "i notice you have mobile phones and digital cameras. for someone interested in photography, would you recommend the sony xperia xa2 ultra or the pentax k-1 camera? please explain the pros and cons of each for photography."
  - `prompt example 4`: "based on the stock quantities and prices shown in your inventory, which tv models offer the best value for money while still being readily available?"
- **product comparison**
  - questions that test the model's ability to compare prices of at least two different products
  - `prompt example`: "what's the difference between product a and product b?"
- **alternative suggestions**
  - questions that test the model's ability to suggest or recommend products matching a given criteria
  - `prompt example`: "i'm looking for a laptop under $1,000 with at least 16gb ram."
- **product availability**
  - questions that test the model's ability to assess correctly the availability of products, as well products that match given criterias
  - `prompt example`: "is product c available in red?"
- **nested requests**
  - questions that test the model's ability to answer complex nested requests, containing 2 or more nested specifications
  - `prompt example`: "can you recommend a smartphone with a good camera and tell me if it's compatible with wireless charging?"
- **order status check**
  - questions that test the model's ability to check the status of an order
  - `prompt example`: "can you tell me the status of my order with order id x?"
- **tracking and shipping information**
  - questions that test the model's ability to provide tracking and shipping information
  - `prompt example`: "when is my order with order id x expected to be delivered?"
- **return eligibility**
  - `prompt example`: "is my order with order id 54321 eligible for return?"
- **order history**
  - `prompt example`: "can you list my previous orders? my customer id is x."
- shipping delay inquiry
  - `prompt example`: "my order with order id 24680 seems delayed. can you provide an update on when it might ship?"
- **order assistance for multiple items**
  - `prompt example`: "i ordered multiple items in order id 16180. can you check if each item has shipped?"

## dataset overview

- **input files**
  - 2 datasets in the form of `.csv` files will be provided
    - product information dataset: [synthetic-product-data.csv](/100-requirements/200-synthetic-product-data.csv)
    - product order information dataset: [synthetic-orders-data.csv](/100-requirements/210-synthetic-orders-data.csv)
- **product information dataset**
  - file location - [synthetic-product-data.csv](/100-requirements/200-synthetic-product-data.csv)
  - this dataset contains product information for various electronic appliances and devices
  - each record represents a unique product with the following key attributes
    - `product id`: unique identifier for each product
    - `product name`: full name/description of the product
    - `category`: product category (e.g., tvs, fridges, mobile phones)
    - `price`: product price in currency units
    - `rating`: customer rating on a scale of 1-5
    - `description`: technical description of the product
    - other metadata fields
  - the dataset covers 10 main product categories
    - fridges
    - tvs
    - mobile phones
    - digital cameras
    - fridge freezers
    - dishwashers
    - cpus
    - freezers
    - washing machines
    - microwaves

## product order information dataset

- file location
  - [synthetic-orders-data.csv](/100-requirements/210-synthetic-orders-data.csv)
- this dataset contains order transaction records for the products
- each record represents a single order with the following key attributes
  - `orderid`: unique identifier for each order
  - `product id`: links to the product in the products dataset
  - `customerid`: identifier for the customer making the order
  - `orderstatus`: current status of the order (e.g., shipped, delivered, cancelled, pending)
  - `returneligible`: boolean indicating if the order can be returned
  - `shippingdate`: timestamp of when the order was/will be shipped
- the orders span across late 2024 with various order statuses tracking the customer purchase lifecycle

## relationship between datasets

- the two datasets are related through the `product id` field
- this allows you to join order information with detailed product data
- enables analysis of ordering patterns across different product categories, price points, and customer ratings

## submission instructions

- how to submit your solution
- you will be receiving an email from O’Reilly Katas
  - `support@mg.ideawake.com` inviting you to the IdeaWake platform we will use to collect and judge submissions
- at least one member of your team will need to create their account and login
- they will submit on the team’s behalf
- proposals are due 22 November at 11:59pm GMT+1
