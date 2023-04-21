import sys

for fn in sys.argv[1:]:

    new_lines = []

    print(fn)

    with open(fn, "r") as file:
        lines = file.read().splitlines()

        for line in lines:
            new_lines.append(line.lower())

    with open(fn, "w") as file:

        for line in new_lines:
            print(line, file=file)
