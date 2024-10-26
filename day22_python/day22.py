

def cut(cards, n):
    return cards[n:] + cards[:n]
  
def deal(cards):
    return cards[::-1]

def deal_with_increment(cards, inc):
    new_c = [0] * len(cards)
    for i, x in enumerate(cards):
        new_c[(i * inc) % len(cards)] = x
    return new_c


cards = list(range(10007))

with open("input.txt") as f:
    for line in f:
        if "deal into new stack" in line:
            cards = deal(cards)
            continue
        op, *args = line.split()
        if op == "cut":
            cards = cut(cards, int(args[0]))
        elif op == "deal":
            inc = int(args[2])
            cards = deal_with_increment(cards, inc)

print(cards.index(2019))


N = 119315717514047
# N = 10007
transform = [1, 0]

def deal(transform):
    return [(-transform[0]) % N, (N-1 - transform[1]) % N]

def cut(transform, x):
    return [transform[0], (transform[1] - x) % N]

def deal_with_increment(transform, x):
    return [ (i * x) % N for i in transform]

with open("input.txt") as f:
    for line in f:
        if "deal into new stack" in line:
            transform = deal(transform)
        else:
            op, *args = line.split()
            if op == "cut":
                transform = cut(transform, int(args[0]))
            elif op == "deal":
                inc = int(args[2])
                transform = deal_with_increment(transform, inc)

def mult(tr1, tr2):
    return [(tr1[0] * tr2[0]) % N, (tr1[0] * tr2[1] + tr1[1]) % N]

def powt(tr, deg):
    if deg == 0:
        return [1, 0]
    if deg == 1:
        return tr
    d = deg // 2
    tmp = powt(tr, d)
    tmp = mult(tmp, tmp)
    if deg % 2 == 1:
        tmp = mult(tmp, tr)
    return tmp

print(powt(transform, 101741582076661))


# and then solve x * transform[0] + transform[1] == 2020 (mod N)
# x congruent 57817797345992 (mod 119315717514047)