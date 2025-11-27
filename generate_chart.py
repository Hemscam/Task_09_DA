import pandas as pd
import matplotlib.pyplot as plt

df = pd.read_csv("results.csv")
df['month_label'] = pd.Categorical(df['month_label'], categories=df['month_label'], ordered=True)
plt.figure(figsize=(10,5))
plt.bar(df['month_label'], df['total_revenue'])
plt.xticks(rotation=45, ha='right')
plt.xlabel("Month (YYYY-MM)")
plt.ylabel("Total Revenue")
plt.title("Monthly Revenue")
plt.tight_layout()
plt.savefig("monthly_revenue.png")
print("Saved monthly_revenue.png")
