# Copulae

A python package for building Copulas.

## Background

Implemented this package because I couldn't find a suitable package during work. 
This package is part of a larger piece in my work that  I found ot convenient to 
extract as its own piece. 

In particular, I use it as part of an AR-GARCH-Copula risk-modelling in finance. 
If you have any feedback, love to hear from you. Just ping me ;).

## Acknowledgements

Most of the code has been implemented by learning from others. In particular, I referred
quite a lot to the textbook [
Elements of Copula Modeling with R](https://www.amazon.com/Elements-Copula-Modeling-Marius-Hofert/dp/3319896342/).
I recommend their work!

## Usage

```python
from copulae import NormalCopula
import numpy as np

np.random.seed(8)
data = np.random.normal(size=(300, 8))
cop = NormalCopula(8)
cop.fit(data)  copulae

cop.random(10)  # simulate random number

# getting parameters
print(cop.params)  

# overriding parameters
cop.params = np.eye(8)  # in this case,  setting to independent Gaussian Copula
```

I'll work on the docs and other copulas as soon as I can!


## TODOS

[ ] Set up package for pip and conda installation
[ ] More documentation on usage and post docs on rtd
[ ] Implement in Gumbel, Joe, Frank and AMH (Archmedeans) copulas
[ ] Implement goodness of fit
[ ] Implement mixed copulas
[ ] Implement convenient graphing functions
