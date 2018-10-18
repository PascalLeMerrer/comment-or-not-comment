## Commentaire de conception <i class="fas fa-smile placeholder"></i>

``` C
/* DESIGN
 * ------
 *
 * The design is trivial, we have a structure representing a job
 * to perform and a different thread and job queue for every job type.
 * Every thread waits for new jobs in its queue, and process every job
 * sequentially.
...
```

Note:

Placé en début de fichier, ce type de commentaire explique les solutions envisagées,
celle qui a été retenue et pourquoi
