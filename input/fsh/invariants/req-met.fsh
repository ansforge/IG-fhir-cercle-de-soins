Invariant: req-met
Description: "Invariant décrivant la méthode de requête des bundles de type transaction : POST s'il s’agit d’un nouvel élément ou PUT s'il s’agit d’un élément qui existe déjà."
Severity: #error
Expression: "value='POST' or value='PUT'"