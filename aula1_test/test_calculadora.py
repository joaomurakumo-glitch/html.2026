from calculadora import somar

def test_somar():
    # eatmos afirmando que:
    # 2 + 3 deve produzir 5.
    assert somar(2, 3) == 5
