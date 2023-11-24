import operations


def perform_operation_with_two_nums(num1, num2, operation):
    """
    Performs mathematical operations with two numbes

    :param num1: float
    :param num2: float
    :param operation: string
    """
    if operation == "addition":
        return operations.addition(num1, num2)
    elif operation == "subtraction":
        return operations.subtraction(num1, num2)
    elif operation == "multiplication":
        return operations.multiplication(num1, num2)
    elif operation == "division":
        return operations.division(num1, num2)
    elif operation == "exponent":
        return operations.exponentiation(num1, num2)
    elif operation == "modulo":
        return operations.modulo(num1, num2)
    else:
        raise ValueError("Invalid operation")
