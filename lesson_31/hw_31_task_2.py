# TASK 2
# Не уверен, что правильно понял условие. Но я написал декоратор,
# который при каждом вызове функции записывает переданные ей
# аргументы, а затем выводит эти логи

def log(func): # декоратор
    log_list = []

    def inner(*args, **kwargs):
        func(*args, **kwargs)

        for item in args:
            log_list.append(item)
        for key, value in kwargs.items():
            item = f"{key}:{value}"
            log_list.append(item)
        print("--------------\nlogs:", *log_list, sep="\n", end="\n--------------\n")

    return inner


@log
def f(*args, **kwargs):  # функция, которая просто выводит тип всех переданных ей аргументов
    for i in args:
        print(i, ":", type(i))
    for key, value in kwargs.items():
        print(key, ":", value, ":", type(value))


# примеры
f(1)
f("second")
f(third=True)
f(("one", "two", "three"))
