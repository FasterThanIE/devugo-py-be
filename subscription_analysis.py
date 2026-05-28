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


    def extract_date_series(self, uid):
        user_rows = self.sub_df[self.sub_df["user_id"] == uid]
        sorted_dates = user_rows["starts_at"].sort_values().reset_index(drop=True)
        return sorted_dates

    def calculate_month_diffs(self, dates_series):
        month_diffs = (dates_series.dt.year.diff() * 12) + dates_series.dt.month.diff()
        return month_diffs

    def break_check(self, dates_series, differences):
        stoper = dates_series[(differences != 1) & (differences.notna())]
        if not stoper.empty:
            return {"idx":stoper.index[0], "stop_date": stoper.iloc[0]}
        return None

    def max_consistent_sub_len(self, dates_series):
        subs_len = 0
        dates = dates_series
        is_stoper = True

        while is_stoper:
            month_diffs = self.calculate_month_diffs(dates)
            stoper = self.break_check(dates, month_diffs)

            if stoper:
                dates = dates_series[stoper["idx"]:]

                if len(month_diffs[:stoper["idx"]]) < len(dates):
                    month_diffs = self.calculate_month_diffs(dates)
                    stoper = self.break_check(dates, month_diffs)

                else:
                    subs_len = len(month_diffs[:-1])
                    is_stoper = False
            else:
                subs_len = len(dates)
                is_stoper = False

        return subs_len



    def users_sub_length(self):
        users_ids = set(self.sub_df["user_id"])

        result = []
        for uid in users_ids:
            dates = self.extract_date_series(uid)
            if len(dates) > 1:
                result.append({"User":uid, "length":self.max_consistent_sub_len(dates)})
            else:
                result.append({"User":uid, "length":1})

        return result











