from tokenize import group

import pandas as pd
import json

class SubscriptionAnalysis:
    def __init__(self, subscriptions):
        self.sub_df = pd.DataFrame(subscriptions)


    def most_used_plans(self):
        return self.sub_df["plan_id"].value_counts().to_json()

    def most_popular_days(self):
        days = self.sub_df["starts_at"].dt.day_name()
        return days.value_counts().to_json()

    def most_popular_months(self):
        months = self.sub_df["starts_at"].dt.month_name()
        return months.value_counts().to_json()

    def most_popular_time(self):
        timestamp = self.sub_df["starts_at"].dt.hour
        return timestamp.value_counts().to_json()

    def max_consistent_sub_len(self, dates_series):
        if len(dates_series) <= 1:
            return len(dates_series)

        dates = dates_series.sort_values().reset_index(drop=True)

        month_diffs = (dates.dt.year.diff() * 12) + dates.dt.month.diff()

        blocks = (month_diffs != 1).cumsum()

        max_sub_len = blocks.value_counts().max()
        return int(max_sub_len)


    def users_sub_length(self):
        if self.sub_df.empty:
            return json.dumps({"subs_length_data": []})

        result = []

        for uid, group in self.sub_df.groupby("user_id"):
            max_len = self.max_consistent_sub_len(group["starts_at"])
            result.append({"user": uid, "length": max_len})

        return json.dumps({"subs_length_data": result})

    def average_sub_length(self):
        if self.sub_df.empty:
            return json.dumps({"average_sub_len": 0.0})

        lengths = [
            self.max_consistent_sub_len(group["starts_at"])
            for _, group in self.sub_df.groupby("user_id")
        ]

        avg_length = pd.Series(lengths).mean() if lengths else 0.0
        return json.dumps({"average_sub_len": float(avg_length)})


