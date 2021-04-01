def remove_spaces_with_underscore(input_str):
    """
    Remove spaces with underscore in input string.
    :param input_str: input string
    :return:
    string
    """
    return input_str.replace(" ", "_")


def make_string_Lower_case(input_str):
    """

    :param input_str:
    :return:
    """
    return input_str.lower()


def make_small_letters_rem_space(input_str):
    """

    :param input_str:
    :return:
    """
    return make_string_Lower_case(remove_spaces_with_underscore(input_str))


def captilaise_string(input_str):
    """

    :param input_str:
    :return:
    """
    return input_str.capitalize()


def remove_special_space_chars(input_str):
    """

    :param input_str:
    :return:
    """
    input_str = ''.join(e for e in input_str if e.isalnum())
    return input_str
