#TASK 3:

def shrink(func): # декоратор, который фильтрует все элементы, длина которых меньше 5
    def inner(*args):
        args = filter(lambda x: len(x) >= 5, args)
        func(*args)
    return inner


@shrink
def user_list(*args):  # функция, которая просто выводит пользователей
    print("List of accepted users:", *args, sep="\n")


user_list("Maxim", "Konstantin", "Ilya", "Kate", "Anya", "Vladislav") # пример с именами
user_list("1", "12", "123", "1234", "12345", "123456", "1234567") # пример с числами
