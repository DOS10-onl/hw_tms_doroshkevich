# TASK 4:
# Если я правильно понял, в этой задаче надо, что бы декоратор вёл подстчёт
# количества вызовов каждой декорируемой функции

def memorizer(func):
    def inner(*args, **kwargs):
        MEMO[func.__name__] = MEMO.get(func.__name__, 0) + 1
        func(*args, **kwargs)

    return inner


@memorizer
def multiply(a, b):
    print(a, "*", b, "=", a * b)


@memorizer
def divide(a, b):
    print(a, "/", b, "=", a / b)


MEMO = {}
divide(4, 2)
multiply(9, 3)
multiply(20, 20)
multiply(11, 11)
print(MEMO)
