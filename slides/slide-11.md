## Commentaire de raison <i class="fas fa-smile placeholder"></i>

``` C
replication.c:

/* SYNC can't be issued when the server has pending data to send to
 * the client about already issued commands. We need a fresh reply
 * buffer registering the differences between the BGSAVE and the current
 * dataset, so that we can copy to other replicas if needed. */
if (clientHasPendingReplies(c)) {
    addReplyError(c,"SYNC and PSYNC are invalid with pending output");
    return;
}

```

Note:

Expliquer son intention est une excellente idée
