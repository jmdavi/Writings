seasons = ["spring","summer","fall","winter"]
cycle = iter(seasons)
next(cycle)

for season in seasons:
    print(f"{season} begat {next(cycle, 'spring eternal')}")
