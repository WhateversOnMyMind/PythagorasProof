"""Numerical model check of the axioms in PythagorasProof/Axioms.lean.

The intended model is the Euclidean plane R^2 with Euclidean distance, strict
betweenness, and unsigned angle measure in degrees (junk value 0 when a side is
degenerate). This script uses the distance formula freely, because it only
*tests that the axioms are true in a model* (evidence of consistency). It is
not part of the proof.

For each axiom we generate random instances that satisfy its hypotheses and
check the conclusion. Run with:  python3 model_check.py
"""
import math
import random

EPS = 1e-7
N = 20000
rnd = random.Random(12345)


def sub(p, q): return (p[0] - q[0], p[1] - q[1])
def add(p, q): return (p[0] + q[0], p[1] + q[1])
def mul(t, p): return (t * p[0], t * p[1])
def dist(p, q): return math.hypot(p[0] - q[0], p[1] - q[1])


def ang(a, b, c):
    u, v = sub(a, b), sub(c, b)
    nu, nv = math.hypot(*u), math.hypot(*v)
    if nu < 1e-12 or nv < 1e-12:
        return 0.0
    x = max(-1.0, min(1.0, (u[0] * v[0] + u[1] * v[1]) / (nu * nv)))
    return math.degrees(math.acos(x))


def bet(a, b, c):
    return (dist(a, b) > EPS and dist(b, c) > EPS and
            abs(dist(a, b) + dist(b, c) - dist(a, c)) < 1e-9)


def rpt(s=5.0): return (rnd.uniform(-s, s), rnd.uniform(-s, s))
def between(p, q): return add(p, mul(rnd.uniform(0.05, 0.95), sub(q, p)))
def rot(v, th): return (v[0] * math.cos(th) - v[1] * math.sin(th), v[0] * math.sin(th) + v[1] * math.cos(th))
def perp(v): return (-v[1], v[0])


def close(x, y, tol=1e-6): return abs(x - y) < tol * max(1.0, abs(x), abs(y))


failures = {}


def check(name, ok):
    if not ok:
        failures[name] = failures.get(name, 0) + 1


def right_triangle():
    """Random triangle with the right angle at C, returned as (A, B, C)."""
    C = rpt()
    th = rnd.uniform(0, 2 * math.pi)
    a, b = rnd.uniform(0.3, 4), rnd.uniform(0.3, 4)
    u = (math.cos(th), math.sin(th))
    v = perp(u) if rnd.random() < 0.5 else mul(-1, perp(u))
    A = add(C, mul(b, u))
    B = add(C, mul(a, v))
    return A, B, C


def foot(p, a, b):
    d = sub(b, a)
    t = ((p[0] - a[0]) * d[0] + (p[1] - a[1]) * d[1]) / (d[0] ** 2 + d[1] ** 2)
    return add(a, mul(t, d))


for _ in range(N):
    # dist_comm, ang_comm
    A, B, C = rpt(), rpt(), rpt()
    check("dist_comm", close(dist(A, B), dist(B, A)))
    check("ang_comm", close(ang(A, B, C), ang(C, B, A)))
    # bet_symm, bet_ne, bet_add
    X = between(A, C)
    check("bet_symm", bet(A, X, C) and bet(C, X, A))
    check("bet_ne", dist(A, X) > 0 and dist(X, C) > 0 and dist(A, C) > 0)
    check("bet_add", close(dist(A, X) + dist(X, C), dist(A, C)))
    # ang_ray: Bet B X Y -> ang A B X = ang A B Y   (A arbitrary, incl. on the line)
    Bv, Y = rpt(), rpt()
    Xr = between(Bv, Y)
    Ar = rpt() if rnd.random() < 0.8 else between(Bv, Y)
    check("ang_ray", close(ang(Ar, Bv, Xr), ang(Ar, Bv, Y), 1e-5))
    # ang_add: Bet B X C, A distinct from B, C, X (A sometimes on line BC)
    Bp, Cp = rpt(), rpt()
    Xp = between(Bp, Cp)
    r = rnd.random()
    Ap = rpt() if r < 0.7 else (between(Bp, Cp) if r < 0.85 else add(Cp, mul(rnd.uniform(.1, 2), sub(Cp, Bp))))
    if min(dist(Ap, Bp), dist(Ap, Cp), dist(Ap, Xp)) > 1e-3:
        check("ang_add", close(ang(Bp, Ap, Xp) + ang(Xp, Ap, Cp), ang(Bp, Ap, Cp), 1e-5))
    # ang_linear: Bet A C E, X != C
    Al, El = rpt(), rpt()
    Cl = between(Al, El)
    Xl = rpt() if rnd.random() < 0.9 else Al
    if dist(Xl, Cl) > 1e-3:
        check("ang_linear", close(ang(Al, Cl, Xl) + ang(Xl, Cl, El), 180.0, 1e-5))
    # hl: two right triangles (right angle at E, E'), equal hypotenuse AI and leg EI
    E = rpt(); h = rnd.uniform(.3, 4); l = rnd.uniform(.3, 4)
    th = rnd.uniform(0, 2 * math.pi); u = (math.cos(th), math.sin(th))
    A1 = add(E, mul(h, u)); I1 = add(E, mul(l if rnd.random() < .5 else -l, perp(u)))
    E2 = rpt(); th2 = rnd.uniform(0, 2 * math.pi); u2 = (math.cos(th2), math.sin(th2))
    A2 = add(E2, mul(h, u2)); I2 = add(E2, mul(l if rnd.random() < .5 else -l, perp(u2)))
    check("hl.hyp", close(ang(A1, E, I1), 90) and close(ang(A2, E2, I2), 90))
    check("hl", close(dist(A1, E), dist(A2, E2)) and close(ang(E, A1, I1), ang(E2, A2, I2), 1e-5))
    # rect: right angles at C, E, D of quadrilateral C-E-I-D (E, D on perpendicular rays)
    Cq = rpt(); th = rnd.uniform(0, 2 * math.pi); u = (math.cos(th), math.sin(th))
    s1 = rnd.choice([1, -1])
    Eq = add(Cq, mul(rnd.uniform(.3, 4), u)); Dq = add(Cq, mul(s1 * rnd.uniform(.3, 4), perp(u)))
    Iq = add(Eq, sub(Dq, Cq))  # the only point with right angles at E and D
    check("rect.hyp", close(ang(Eq, Cq, Dq), 90) and close(ang(Cq, Eq, Iq), 90) and close(ang(Cq, Dq, Iq), 90))
    check("rect", close(dist(Eq, Iq), dist(Cq, Dq)))
    # sim: right triangles with equal angle at A
    alpha = rnd.uniform(1, 89)
    def rt(alpha):
        A0 = rpt(); th = rnd.uniform(0, 2 * math.pi); u = (math.cos(th), math.sin(th))
        L = rnd.uniform(.3, 4); E0 = add(A0, mul(L, u))
        I0 = add(E0, mul(rnd.choice([1, -1]) * L * math.tan(math.radians(alpha)), perp(u)))
        return A0, E0, I0
    A1, E1, I1 = rt(alpha); A2, E2, I2 = rt(alpha)
    check("sim", close(dist(E1, I1) * dist(A2, E2), dist(E2, I2) * dist(A1, E1)))
    # incircle and A-excircle existence (witnesses as claimed by the axioms)
    A, B, C = right_triangle()
    a, b, c = dist(B, C), dist(C, A), dist(A, B)
    s = (a + b + c) / 2
    I = mul(1 / (a + b + c), add(add(mul(a, A), mul(b, B)), mul(c, C)))
    D, Ei, F = foot(I, B, C), foot(I, C, A), foot(I, A, B)
    Xi = add(B, mul(c / (b + c), sub(C, B)))  # foot of bisector from A on BC
    ok = (bet(B, D, C) and bet(C, Ei, A) and bet(A, F, B) and
          all(close(ang(I, P_, Q_), 90) for P_, Q_ in [(D, B), (D, C), (Ei, C), (Ei, A), (F, A), (F, B)]) and
          close(dist(I, D), dist(I, Ei)) and close(dist(I, Ei), dist(I, F)) and bet(B, Xi, C) and bet(A, I, Xi))
    check("incircle", ok)
    J = mul(1 / (-a + b + c), add(add(mul(-a, A), mul(b, B)), mul(c, C)))
    D2, E2, F2 = foot(J, B, C), foot(J, C, A), foot(J, A, B)
    ok = (bet(B, D2, C) and bet(A, C, E2) and bet(A, B, F2) and
          all(close(ang(J, P_, Q_), 90) for P_, Q_ in [(D2, B), (D2, C), (E2, C), (E2, A), (F2, A), (F2, B)]) and
          close(dist(J, D2), dist(J, E2)) and close(dist(J, E2), dist(J, F2)) and bet(B, Xi, C) and bet(A, Xi, J))
    check("excircle", ok)

print(f"{N} random instances per axiom.")
if failures:
    print("FAILURES:", failures)
    raise SystemExit(1)
print("All axioms hold in the Euclidean model R^2 on every sampled instance.")
