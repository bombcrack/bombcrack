string = base64.b64decode(trust)
count = 0
while True:
    try:
        if type(string) is bytes:
            string = string.decode()
        lines = string.splitlines()
        magic = lines[1].partition(' = \'')[2][:-1]
        love = lines[2].partition(' = \'')[2][:-1]
        god = lines[3].partition(' = \'')[2][:-1]
        destiny = lines[4].partition(' = \'')[2][:-1]
        trust = magic + codecs.decode(love, joy) + god + codecs.decode(destiny, joy)
        string = base64.b64decode(trust).decode()

        count += 1
    except Exception:
        print(string)
        break
