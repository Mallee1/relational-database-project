# Project Notes

## Market Basket Analysis
A pair of services that occurs together frequently can be evaluated using support, confidence, and lift.

- Support = how often both services appear together out of all properties
- Confidence = how often one service appears given the other
- Lift = how much more likely the pair is compared to random occurrence

Example from the project:
- Support = 5/30
- Confidence (Mow Lawn -> Plant Annuals) = 5/17
- Confidence (Plant Annuals -> Mow Lawn) = 5/9
- Lift = (5/17) / (9/30) = 150/153

## Decision Tree Concept
A decision tree could help Garden Glory predict which properties are likely to become repeat customers if a Multiple Visits yes/no field is added.

The model would analyze existing data such as:
- property location
- type of services requested
- frequency of service combinations
- other customer patterns

The tree would split the data into conditions that lead to likely repeat visits or non-repeat visits, helping identify which customer traits are most associated with retention.
