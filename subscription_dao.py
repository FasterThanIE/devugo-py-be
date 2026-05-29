from db import Db


class SubscriptionDAO(Db):
    def __init__(self):
        super().__init__()

    def extract_subscription(self):
        query = ("SELECT user_id, plan_id, status, starts_at, ends_at, renews_at, created_at, updated_at "
                 "FROM subscriptions")
        return self._execute_query(query)