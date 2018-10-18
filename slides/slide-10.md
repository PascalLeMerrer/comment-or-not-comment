## Commentaire de conception <i class="fas fa-smile ok"></i>

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

C'est certainement une très bonne idée, il faudrait que j'en prenne l'habitude

