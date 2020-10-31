import math as m
import numpy as np

from pyfefa import scattf
print(scattf.weko.__doc__)

"""
fe,fa = weko(g,dw,z,akv,dwfflg,absflg)

Wrapper for ``weko``.

Parameters
----------
g : input float
dw : input float
z : input int
akv : input float
dwfflg : input int
absflg : input int

Returns
-------
fe : float
fa : float
"""


fe, fa = scattf.weko(0.1, 0.3, 14, 100.0, False, False)
print(fe, fa)


fe, fa = scattf.weko(0.1, 0.3, 14, 100.0, True, True)
print(fe, fa)