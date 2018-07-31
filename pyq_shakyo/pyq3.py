# 割り勘関数のエラー処理をしよう
def warikan(total, num):
    siharai = 0

    try:
        siharai =  total // num
    except ZeroDivisionError:
        print('割り勘人数に0人が設定されました。引数を確認してください。')
    if siharai > 0:
        message = '一人あたり{}円です。'.format(siharai)
        if total % num > 0:
            message += '{}円の不足が生じています'.format(total % num)
        print(message)
    print('関数warikan 終了')  # エラーの発生に関わらず実行される


print('---ZeroDivisionErrorが発生する---')
warikan(1000, 0)
print('---エラーが発生しない---')
warikan(1000, 5)
warikan(1000, 3)

