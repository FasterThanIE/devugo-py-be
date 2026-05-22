import pandas as pd

class SubscriptionAnalysis:
    def __init__(self, subscriptions):
        self.sub_df = pd.DataFrame(subscriptions)


    def most_used_plans(self):
        return self.sub_df["plan_id"].value_counts().to_dict()

    def most_popular_days(self):
        days = self.sub_df["starts_at"].dt.day_name()
        return days.value_counts().to_dict()

    def most_popular_months(self):
        months = self.sub_df["starts_at"].dt.month_name()
        return months.value_counts().to_dict()

    def most_popular_time(self):
        timestamp = self.sub_df["starts_at"].dt.hour
        return timestamp.value_counts().to_dict()