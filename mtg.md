---
title: MTG
---

# MTG
Stuff




# Similarity Function
...

## Direct Mapping
F: C -> R^N
where C is a card. N is likely very high (>1000)

We would take card text and map it into the space.

For example, lets restrict to just cards with a single keyword.
```
[Name     Mana]
..
[Type - Sub Type]
[Text]
[Meta]
```
We can ignore "Name", but Mana can easily be mapped to a vector.
* There are 5 colors: W U B R G
* There is generic mana
* There is colorless mana
* There is "X" mana. Up to 3 kinds (X,Y,Z)
* There are 15 "hybrid" mana symbols (each pair of color + a pair with generic mana)
* There are 5 "phyrexian" mana symbols (one for each color)

Fortunately order doesn't matter, so there are "only" 5+1+1+3+15+5 = 30 dimensions


# Cluster Detection
...

# Dimensions from Metric
Algorithm for estimating a metric preserving embedding of the input into
R^n which minimizes n.

"Anealing" method. embed randomly, (or a very simple "put at X: a_x+d(a,b), Y: 0...") and then set "forces" between pairs s.t. f(a,b) has equilibrium when d'(a,b) == d(a,b))

Hyperplanes: find subsets which are relatively far from other subsets, treat subsets as points and use this as a starting plan.

## Equilibrium:

Consider points A, B attached by a spring with spring coefficient k and unstressed length 2x denoted AB(k,x)
then the equilibrium distance is 2x

now consider C, attached to BOTH A and B with springs AC(k,x) and AB(k,x)
Two equilibriums now exist, 1 in one dimension and 1 in 2.

The single dimension solution has C either between A and B (if its bond is stronger than A-B) or on one side.
In reality (a 2D or 3D space), any small offset from this equilibrium point will cause the 3 points to make a triangle. (unless ACx+BCx=ABx exactly)

Adding a dimension allows a 0 potential energy (stable equilibrium) solution (since triangles of arbitrary side length exist)

## Minimum Dimension
For an arbitrary distance metric on N (finite) points, an embedding exists for those points in R^M where d(a,b) = d'(a,b)
where M is at most N-1

The lowest M for which an embedding exists I call the "minimum embedding dimension."

But how do we find M for a given set of distances? What are the properties of a set with minimum embedding dimension N-1 vs < N-1

For a set to "fit" in a dimension, all subsets have to obey that dimension's "triangle rule".
Eg. for 1 dimension, For all x, y, z: d(x, z) + d(y, z) = d(x, y)

The generalization to higher dimensions:
> In Euclidean space, the hypervolume of an (n − 1)-facet of an n-simplex is less than or equal 
> to the sum of the hypervolumes of the other n facets. In particular, the area of a triangular face 
> of a tetrahedron is less than or equal to the sum of the areas of the other three sides. ([wiki](https://en.wikipedia.org/wiki/Triangle_inequality#Generalization_to_higher_dimensions))

