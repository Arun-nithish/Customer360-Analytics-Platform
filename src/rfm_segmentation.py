import pandas as pd

df=pd.read_csv("data/orders.csv")
rfm=df.groupby("customer_id").agg({"order_id":"count","sales":"sum"})
rfm.columns=["Frequency","Monetary"]
print(rfm.head())
