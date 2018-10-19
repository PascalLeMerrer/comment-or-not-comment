## Commentaire de guidage <i class="fas fa-skull ko"></i>

``` C
    logReplicaDisconnection(c)
    freeQueryBuffer(c)
    deallocateBlockingStructures(c)
```

Note:

Alors là, je suis en profond désaccord avec Antirez.
Pour moi c'est le type de commentaire qu'il ne faut surtout pas faire.
Eprouver le besoin de les écrire, c'est un constat d'échec :
cela veut dire que le code n'est pas clair.
Pour moi, à chaque fois qu'on a envie d'écrire un commentaire de ce type,
on devrait extraire le code dans une fonction, dont le nom serait
aussi clair que le commenataire (qui deviendrait inutile). Cette fonction
bien entendu ne devrait avoir qu'une seule responsabilité
(comme toue les autres idéalement).