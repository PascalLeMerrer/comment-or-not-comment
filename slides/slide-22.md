## Commentaire de dette technique <i class="fas fa-smile placeholder"></i>

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

Je ne suis pas contre les TODO, contrairement à Antirez.
Mais je leur fait régulièrement la chasse.
Comme aux bugs ouverts.
Les deux doivent être en petit nombre, en permanence.