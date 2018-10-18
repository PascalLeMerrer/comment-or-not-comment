## Commentaire de fonction <i class="fas fa-meh whynot"></i>

``` C
/* Seek the greatest key in the subtree at the current node. Return 0 on
 * out of memory, otherwise 1. */

int seekGreatestKey(raxIterator *it) {
    ...
}
```

Note:

Pourquoi pas...

Les commentaires de fonction, je ne suis pas contre,
mais à condition qu'ils ne se substituent pas à un nommage soigné
et qu'ils ne soit pas systématiques (lorsque la lecture de la signature
suffit à comprendre clairement ce que fait la fonction, le commentaire est inutile)

Par ailleurs je suis adepte de la disposition des fonction dans l'ordre
de lecture naturel (de haut en bas)
=> d'où modif du commentaire par rapport au code précédent


