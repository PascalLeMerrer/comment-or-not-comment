## Commentaire de raison <i class="fas fa-smile ok"></i>

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

Explique pourquoi le code fait une certaine chose, même si ce qu'il fait est
parfaitement clair

Si une personne modifie ce code, elle le fait en ayant les éléments de contexte importants