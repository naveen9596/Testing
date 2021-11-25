var1 = {"a": "b"}
var2 = {"a": "c"}


def get_variables(arg1, arg2):
    print(arg1, arg2)
    if arg1 == '1':
        return var1
    return var2
