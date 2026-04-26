import time as t
import random as r

mama = 0
while mama < 1:
    print("scroll below")
    t.sleep(0.1)
    print ("\n" * 50)
    mama = mama + 1
    
def kviz():
    name = input("Как тебя зовут? ")
    age = input("Сколько тебе лет? ")
    print("Привет, " + name + "!")
    print("Добро пожаловать в квиз на тему Майнкрафт!")
    print("Поехали!")
    point = 0
    q1 = input("Из чего крафтится деревянная кирка? ")
    if q1 == "палки и доски" or q1 == "доски и палки":
        print("Правильно!")
        point += 1
    else:
        print("Неправильно! Правильный ответ: палки и доски")
    q2 = input("Сколько клеток в крафтинге? ")
    if q2 == "9":
        print("Правильно!")
        point += 1
    else:
        print("Неправильно! Правильный ответ: 9")
    q3 = input("Как называется главный босс? ")
    if q3 == "дракон края" or q3 == "эндер дракон":
        print("Правильно!")
        point += 1
    else:
        print("Неправильно! Правильный ответ: дракон края или эндер дракон")
    q4 = input("Из чего делается факел? ")
    if q4 == "уголь и палка" or q4 == "палка и уголь":
        print("Правильно!")
        point += 1
    else:
        print("Неправильно! Правильный ответ: уголь и палка")
    q5a = input("Сложный вопрос! Часть 1: Как называется моб который взрывается? ")
    q5b = input("Часть 2: Какого он цвета? ")
    if q5a == "крипер" and q5b == "зеленый":
        print("Правильно!")
        point += 1
    else:
        print("Неправильно! Правильный ответ: крипер, зеленый")
    print("Квиз окончен, " + name + "!")
    print("Твои очки: " + str(point) + " из 5")

def dver():
    print('Ты стоишь в темном замке. Перед тобой три двери.')
    print('1 - Красная дверь')
    print('2 - Синяя дверь')
    print('3 - Зеленая дверь')
    door = input('Какую дверь выберешь? (1/2/3): ')
    if door == '1':
        print('Ты открываешь красную дверь...')
        print('Перед тобой огромный дракон! Он смотрит на тебя.')
        print('Что делать?')
        print('1 - Сразиться с драконом')
        print('2 - Убежать')
        action = input('Твой выбор (1/2): ')
        if action == '1':
            print('Ты бросаешься в бой и побеждаешь дракона! Ты герой!')
        else:
            print('Ты убегаешь... и попадаешь в яму. Игра окончена!')
    elif door == '2':
        print('Ты открываешь синюю дверь...')
        print('Комната заполнена золотом! Но в углу сидит старик.')
        print('Старик говорит: "Возьмешь золото - потеряешь память."')
        print('1 - Взять золото')
        print('2 - Уйти')
        action = input('Твой выбор (1/2): ')
        if action == '1':
            print('Ты берешь золото. Богатый, но не помнишь кто ты. Конец.')
        else:
            print('Ты уходишь мудрым. Старик улыбается и дает тебе карту сокровищ!')
    elif door == '3':
        print('Ты открываешь зеленую дверь...')
        print('Прекрасный сад! Поет птица, светит солнце.')
        print('Ты находишь волшебный портал.')
        print('1 - Войти в портал')
        print('2 - Остаться в саду')
        action = input('Твой выбор (1/2): ')
        if action == '1':
            print('Портал переносит тебя домой. Ты победил игру!')
        else:
            print('Ты остаешься в саду навсегда. Спокойный конец.')
    else:
        print('Такой двери нет!')

def random():
    print("wait second")
    t.sleep(1)
    asd = r.randint(1, 100)
    print(asd)
    sadas = input("Again? ")
    if sadas == "да" or sadas == "da" or sadas == "yea" or sadas == "yes":
        random()

def igra():
    player_score = 0
    comp_score = 0
    while True:
        player = input("Введи камень, ножницы или бумага: ")
        comp = r.randint(1, 3)
        if comp == 1:
            comp = "камень"
        elif comp == 2:
            comp = "ножницы"
        else:
            comp = "бумага"
        print("Компьютер выбрал: " + comp)
        t.sleep(1)
        if (player == "камень" and comp == "ножницы") or (player == "ножницы" and comp == "бумага") or (player == "бумага" and comp == "камень"):
            print("Ты победил!")
            player_score += 1
        elif player == comp:
            print("Ничья!")
        else:
            print("Компьютер победил!")
            comp_score += 1
        print("Счёт - Ты: " + str(player_score) + " Компьютер: " + str(comp_score))
        again = input("Играть ещё? (да/нет): ")
        if again != "да":
            print("Итог - Ты: " + str(player_score) + " Компьютер: " + str(comp_score))
            break

def vybar():
    inputage = input("Выберите програму (доступные квиз, текстовая игра (дверь), random, камень ножницы бумага): ")
    if inputage == 'квиз' or inputage == 'майнкрафт':
        kviz()
    elif inputage == 'дверь' or inputage == 'текстовая игра':
        dver()
    elif inputage == "random number" or inputage == "random int" or inputage == "random":
        random()
    elif inputage == "камень ножницы бумага" or inputage == "кнб" or inputage == "игра":
        igra()
    else:
        print("wrong")
        vybar()

vybar()
