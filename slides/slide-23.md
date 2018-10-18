## Commentaire de dette technique <i class="fas fa-smile ok"></i>

``` C
    /* Here we should perform garbage collection in case at this point
     * there are too many entries deleted inside the listpack. */
    entries -= to_delete;
    marked_deleted += to_delete;
    if (entries + marked_deleted > 10 && marked_deleted > entries/2) {
	/* TODO: perform a garbage collection. */
    }
```

Note:

FIXME, TODO, XXX, "This is a hack", sont tous des commentaires de dette technique.

Antirez les évite et leur préfère par exemple une explication des choix actuels
dans le commentaire de conception
Il dit cependant qu'il faut les rechercher de temps et en temps
et les corriger si possible ou les suprimer s'ils ne sont plus pertinents