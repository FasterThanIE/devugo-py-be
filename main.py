from subscription_dao import SubscriptionDAO
from subscription_analysis import SubscriptionAnalysis



db = SubscriptionDAO()
analysis = SubscriptionAnalysis(db.extract_subscription())
print(analysis.most_used_plans())
print(analysis.most_popular_days())
print(analysis.most_popular_months())
print(analysis.most_popular_time())
print(analysis.users_sub_length())
print(analysis.average_sub_length())
