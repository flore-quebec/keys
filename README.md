# Formattage des clés

Chaque élément des clés doit être séparé par un espace (ou un tabulation, *e.g.* *Enter*).

Chaque élément doit débuter par un nombre suivi d'un point. Par exemple, `1.` ou `1'.` pour le choix alternatif.

Chaque élément doit se terminer par un nombre vers où la clé doit mener ou par le nom d'une espèce ou d'un groupe taxonomique. Lorsque cet élément est un taxon, on doit indiquer le niveau taxonomique (*e.g.* `espèce Polygonatum pubescens` ou `genre Viola`. Il n'est pas nécessaire de mettre le nom du groupe en italique ou de créer un lien, car le code du site s'en chargera automatiquement. Un point doit également être utilisé à la fin de chaque élément devant le nombre ou l'espèce vers où la clé envoie.

Voici un exemple de clé simple:

``` md
1. Feuilles courtement et densément pubescentes en dessous. Espèce indigène. espèce Polygonatum pubescens

1'. Feuilles entièrement glabres sur les deux faces. Espèce échappée des jardins. 2

2. Tiges avec des angles saillants. 1(-2) fleurs par pédicelle. Feuilles nettement papilleuses en dessous (grossissement 25x). Espèce cultivée, pas encore naturalisée au Québec. espèce Polygonatum odoratum 

2'. Tiges plutôt arrondies. Fleurs groupées par 2-5 (-10). Feuilles sans papilles. 3

3. Filaments des étamines glabres ou courtement papilleux. Espèce rarement cultivée, indigène en Ontario. Pas encore naturalisée au Québec. espèce Polygonatum biflorum
   
3'. Filaments des étamines couverts de longs poils. Espèce couramment cultivée et naturalisée en quelques endroits, originaire d'Europe. espèce Polygonatum multiflorum
```

Si un élément de la clé ne permet pas de caractériser entièrement un taxon, on peut ajouter la mention `(en partie)` suite au nom de l'espèce (_e.g._ `espèce Polygonatum pubescens (en partie)`)

## Clés multiples et indépendantes

Les clés multiples et indépendantes (*e.g.* clé des fleurs et clé d'hiver) doivent simplement être séparées par le titre de chaque clé. Par exemple:

``` md

Clé d'été

1. Voici une description espèce Espèce un

1'. Voici une autre espèce Espèce deux

Clé d'hiver

1. Voici une description espèce Espèce un 

1'. Voici une autre description espèce Espèce deux

```

## Clés composées

Les clés composées, *i.e.* les clés qui renvoient à d'autres clés doivent être séparées par leur titre débutant par `Clé A -`, `Clé B -`, `Clé C -`, etc. Les éléments de chaque clé qui renvoient vers une de ces clés doivent se terminer par `Clé A`, `Clé B`, `Clé C`, etc. Donc, au lieu de se terminer par un nombre ou un taxon, ces éléments renvoient vers les différentes clés. La numérotation doit repartir à 1 à chaque nouvelle clé. En voici un exemple:

``` md

1. Feuilles insérées le long de la tige Clé A

1'. Feuilles toutes basales 2

2. Apex du style en forme de crochet ( ); ovaire et capsules densément pubescents. Stolons vivaces,
bruns, coriaces et pubescents. Espèce introduite fréquente dans les pelouses espèce Viola odorata

2'. Apex du style épaissi ( ); ovaire et capsules glabres (ou pubescentes chez V. affinis). Stolons
absents, si présents, alors blanc-verdâtre, turgides et grêles, glabres. Espèces indigènes ou introduites 3

3. Fleurs jaunes; feuilles et pétioles se couchant rapidement à plat sur le sol après la floraison des fleurs
chasmogames; limbes dépassant souvent 7 cm de long, largement ovés ou presque orbiculaires, à base
cordée avec un sinus étroit (moins de 2 mm à la base, lobe se chevauchant); lobes basaux représentant
moins de 1/7 de la longueur du limbe espèce Viola rotundifolia

3'. Fleurs bleues, violettes, pourpres ou blanches; feuilles avec une combinaison différente de caractères. 4

4. Pétale éperonné veiné de pourpre foncé; fleurs blanches (ou violet très pâle chez V. palustris). Stolons
présents (sauf chez V. renifolia à fleurs blanches) Clé B

4'. Pétale éperonné veiné de violet pâle ou foncé, jamais pourpre; fleurs bleues, pourpres ou violettes
(parfois blanches ou tachetées chez V. communis). Stolons absents Clé C

Clé A - Violettes avec des feuilles insérées sur la tige

1. Fleurs jaunes 2

1'. Fleurs blanches, bleues, violettes, ou multicolores 3

2. Plante avec 2 tiges et plus, généralement décombantes à la base lors de la floraison des fleurs
chasmogames; feuilles basales 2 et plus; feuilles caulinaires distribuées sur toute la longueur des tiges;
feuilles garnies de courts poils d’environ 0,2 mm sur la face abaxiale espèce Viola eriocarpa

...

```

Pour un exemple, voir la clé des [Viola](https://florequebec.ca/?genre=Viola).

## Sections

On peut également utiliser des sections pour regrouper différents éléments ou taxons de la clé. Pour ce faire, on inscrit `Section` devant le titre des sections. Ces sections n'ont aucun impact sur la navigation des clés. En voici un exemple:

``` md

1. Voici une description 2 

1'. Voici une autre description 3

Section Espèces avec des gros fruits

2. Une feuille espèce Espèce un

2'. Deux feuilles espèce Espèce deux

Section Espèces avec de petits fruits

3. Cinq branches espèce Espèce trois

3'. Six branches espèce Espèce quatre
```

## Niveaux taxonomiques

Lorsque cela est possible, ce site favorise les clés simples comportants le moins grand nombre d'éléments ou d'espèces possible. Par exemple, une clé d'un genre complexe devrait renvoyer vers les sous-genres ou les sections et les clés de ces sous-genres ou de ces sections devraient renvoyer aux espèces. Toutefois, lorsque le nombre d'espèces concernées est faible, il peut être plus pratique de créer des clés qui vont jusqu'à l'espèce en ignorant les groupes taxonomiques intermédiares. En général donc, il est préférable de créer des clés qui mènent directement au groupe taxonomique inférieur immédiat. Lorsque cela est plus pratique ou pertinent, les clés peuvent aussi mener vers les espèces ou vers des groupes taxonomiques inférieurs arbitraires.

## Crédits et auteurs

L'attribution des comptes-rendus et des clés est automatiquement
déterminée à partir des soumissions et des modifications apportées par
la plateforme Github. Cependant, il est également possible d'ignorer
cette attribution automatique en inscrivant les crédits directement dans
les comptes-rendus. Que ce soit dans les comptes-rendus, les clés, ou
les comptes-rendus de taxons, on spécifie les différents rôles de cette
façon:

``` md
Auteurs: Machin Chouette, Carl von Linné et Elvis Presley
Modifié par: Bob Binette
```

Les lignes doivent débuter par `Auteur:`, `Auteurs:` ou `Modifié par:`.
Lorsque ces lignes sont trouvées dans les comptes-rendus, ces
informations auront préséance sur les crédits automatisés. La date
indiquée comme date de mise à jour sera toutefois celle de la dernière
modification détectée sur Github.

Cette façon de procéder est surtout utile lorsqu'il y a plusieurs
auteurs ou lorsque les modifications sont associées à plusieurs
personnes, étant donné qu'une seule personne peut soumettre ou modifier
un compte-rendu par l'intermédiaire de la plateforme Github. Cela permet
aussi d'attribuer les crédits aux contributeurs qui ne souhaitent pas
soumettre leur compte-rendu par l'intermédiaire de la plateforme Github.
