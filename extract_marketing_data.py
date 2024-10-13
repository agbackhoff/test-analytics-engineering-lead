from ucimlrepo import fetch_ucirepo
# fetch dataset
bank_marketing = fetch_ucirepo(id=222)

X = bank_marketing.data.original

X.to_csv("analytics_test/seeds/original.csv", index=False)
# y.to_csv("analytics_test/seeds/targets.csv", index=False)

print("CSV files exported to analytics_test/seeds/")

