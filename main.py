from db import Db
import pandas as pd

query = "SELECT * FROM subscriptions"

db = Db()

subscriptions = db._execute_query(query)
print(pd.DataFrame(subscriptions))