# Family Tree AI by Mitchee Costelo
The Family Tree AI program is designed to take input from a user and determine if a specific relationship is correct based off a preloaded family tree.

## Requirements
- SWI Prolog
    - You can download [here](https://www.swi-prolog.org/Download.html)

## Setup
1. Download SWI Prolog using the link above
2. Press File -> Consult -> Navigate to the `Family Tree AI.pl` file
3. Test certain relationships using functions

## Usable Functions
- `father_of(*X*, *Y*).`
    - *X* is the father of *Y*
        - ex: `father_of(ernie, mitchee).`

- `mother_of(*X*, *Y*).`
    - *X* is the mother of *Y*
        - ex: `mother_of(cynthia, mitchee).`

- `son_of(*X*, *Y*).`
    - *X* is the son of *Y*
        - ex: `son_of(mitchee, cynthia).`

- `daughter_of(*X*, *Y*).`
    - *X* is the daughter of *Y*
        - ex: `daughter_of(miyukee, cynthia).`

- `sibling_of(*X*, *Y*).`
    - *X* is the daughter of *Y*
        - ex: `sibling_of(mitchee, miyukee).`

- `grandparent_of(*X*, *Y*).`
    - *X* is the grandparent of *Y*
        - ex: `grandparent_of(chuck, mitchee).`

- `ancestor_of(*X*, *Y*).`
    - *X* is the ancestor of *Y*
        - ex: `ancestor_of(chris, mitchee).`

- `uncle_of(*X*, *Y*).`
    - *X* is the uncle of *Y*
        - ex: `uncle_of(victor, mitchee).`

- `aunt_of(*X*, *Y*).`
    - *X* is the aunt of *Y*
        - ex: `aunt_of(susan, mitchee).`

- `cousin_of(*X*, *Y*).`
    - *X* is the cousin of *Y*
        - ex: `cousin_of(alexsis, mitchee).`

- `brother_in_law_of(*X*, *Y*).`
    - *X* is the brother in law of *Y*
        - ex: `brother_in_law_of(ernie, susan).`

- `sister_in_law_of(*X*, *Y*).`
    - *X* is the sister in law of *Y*
        - ex: `sister_in_law_of(cynthia, victor).`

- `father_in_law_of(*X*, *Y*).`
    - *X* is the father in law of *Y*
        - ex: `father_in_law_of(chuck, cynthia).`

- `mother_in_law_of(*X*, *Y*).`
    - *X* is the mother in law of *Y*
        - ex: `mother_in_law_of(allie, cynthia).`

### Adding Family Members / Creating Your Own Tree
If you'd like to add members or create your own family tree, you can do so by doing the following steps:

1. Edit the "Family Tree Ai.pl" file
    - File -> Edit -> Navigate and select the `Family Tree Ai.pl` file
2. Enter a person's name and the gender using either `male(*X*).` or `female(*Y*).`
    - ex: `male(mitchee).`
3. Enter a person's relationship using `parent_of(X, Y)` and / or `married_to(X, Y)`
    - ex: `parent_of(cynthia, mitchee).`

# Default Family Tree Reference Image
![Family Tree Image](github.com/MitcheeCostelo/Prolog-Family-Tree/blob/main/Image/Family%20Tree.png?raw=true)