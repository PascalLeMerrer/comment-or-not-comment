## Commentaire d'enseignement <i class="fas fa-meh whynot"></i>

``` C
/* Draw a square centered at the specified x,y coordinates, with the
 * specified rotation angle and size. In order to write a rotated square,
 * we use the trivial fact that the parametric equation:
 *
 *  x = sin(k)
 *  y = cos(k)
 *
 * Describes a circle for values going from 0 to 2*PI. So basically
 * if we start at 45 degrees, that is k = PI/4, with the first point,
 * and then we find the other three points incrementing K by PI/2
 * (90 degrees), we'll have the points of the square. In order to rotate
 * the square, we just start with k = PI/4 + rotation_angle,
 * and we are done.
 ...
```

Note:

Celui-là me laisse perplexe, je ne sais pas quoi en penser...

