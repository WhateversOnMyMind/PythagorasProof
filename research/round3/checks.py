"""Numeric sanity checks for the Round-3 volume candidates (not proofs).
Each check verifies a claim made in CANDIDATES.md (Round 3) on random right triangles."""
import numpy as np, itertools, random
from scipy.spatial import ConvexHull

def vol(pts): return ConvexHull(np.array(pts, float)).volume

random.seed(1)
for _ in range(5):
    a, b, H = [random.uniform(1, 6) for _ in range(3)]
    c = (a*a+b*b)**.5; h = a*b/c; s = a+b
    # R3-3: twisted prismatoid between the (a+b)-square and the inscribed c-square at height H
    bot = [(0,0,0),(s,0,0),(s,s,0),(0,s,0)]
    top = [(a,0,H),(s,a,H),(b,s,H),(0,b,H)]
    V = vol(bot+top)
    pred_decomp = H*(c*c + 4*a*b/3)            # central prism + 4 pyramids (apex W over wall c x H)
    pred_prismatoid = H/6*(s*s + 4*(3*s*s + c*c)/4 + c*c)   # Simpson with Minkowski-mean midsection
    # flatten test: every term is H * (planar area) * {1, 1/3}
    print(f"R3-3 hull={V:.6f} decomp={pred_decomp:.6f} prismatoid={pred_prismatoid:.6f}")
    # R3-1: orthoscheme A-C-B-D with BD=w perpendicular to plane ABC
    w = random.uniform(1, 6)
    A=(0,b,0); C=(0,0,0); B=(a,0,0); D=(a,0,w)
    V1 = vol([A,B,C,D]); print(f"R3-1 V={V1:.6f} abw/6={a*b*w/6:.6f}")
    # R3-4: foot of perpendicular from O to plane XYZ is the orthocentre of XYZ (trirectangular tetra)
    x,y,z = a,b,w
    n = np.array([1/x,1/y,1/z]); P = n/np.dot(n,n)   # foot of perp from origin to plane x/X+y/Y+z/Z=1
    X,Y,Z = map(np.array,[(x,0,0),(0,y,0),(0,0,z)])
    print("R3-4 orthocentre check:", abs(np.dot(P-X,Y-Z))<1e-9 and abs(np.dot(P-Y,X-Z))<1e-9)
    # R3-5/R3-6: box p,q,r ; central tetrahedron on face diagonals has volume pqr/3 ; faces are acute triangles
    p,q,r = a,b,w
    T=[(0,0,0),(p,q,0),(p,0,r),(0,q,r)]
    print(f"R3-5/6 disphenoid V={vol(T):.6f} pqr/3={p*q*r/3:.6f}")

# R3-3, computation 2': hull = box (a+b)x(a+b)xH minus four corner tetrahedra W_b W_t Q_t Q'_t.
# Each tetrahedron has volume (1/3)(ab/2)H.  Equating with computation 1 cancels every 1/3-term:
#   c^2 H + 4*(abH/2 - abH/6)  ==  (a+b)^2 H - 4*abH/6   <=>  c^2 = a^2 + b^2  (the planar Zhoubi identity)
print("--- R3-3 computation 2' ---")
for _ in range(3):
    a, b, H = [random.uniform(1, 6) for _ in range(3)]
    c2 = a*a + b*b; s = a + b
    bot = [(0,0,0),(s,0,0),(s,s,0),(0,s,0)]; top = [(a,0,H),(s,a,H),(b,s,H),(0,b,H)]
    V = vol(bot+top)
    box_minus = s*s*H - 4*(a*b/2*H/3)
    comp1 = c2*H + 4*(a*b*H/2 - a*b*H/6)
    # explicit corner tetrahedron at corner (0,0): W_b=(0,0,0), W_t=(0,0,H), Q_t=(a,0,H), Q'_t=(0,b,H)
    tet = vol([(0,0,0),(0,0,H),(a,0,H),(0,b,H)])
    print(f"hull={V:.6f} box-minus-4tets={box_minus:.6f} comp1={comp1:.6f} tet={tet:.6f} abH/6={a*b*H/6:.6f}")
