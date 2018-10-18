## Commentaire de guidage <i class="fas fa-skull placeholder"></i>

``` C
    /* Log link disconnection with replica */
    if ((c->flags & CLIENT_SLAVE) && !(c->flags & CLIENT_MONITOR)) {
        serverLog(LL_WARNING,"Connection with replica %s lost.",
            replicationGetSlaveName(c));
    }

    /* Free the query buffer */
    sdsfree(c->querybuf);
    sdsfree(c->pending_querybuf);
    c->querybuf = NULL;

    /* Deallocate structures used to block on blocking ops. */
    if (c->flags & CLIENT_BLOCKED) unblockClient(c);
    dictRelease(c->bpop.keys);
```

Note:

Unique rôle de ces commentaires : réduire la charge cognitive du lecteur
Le code source de Redis est bourré de ces commentaires