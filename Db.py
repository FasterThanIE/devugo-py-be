import os

import pymysql
from dotenv import load_dotenv


class Db:

    def __init__(self):

        load_dotenv()

        self.__host = os.getenv("DB_HOST")
        self.__user = os.getenv("DB_USER")
        self.__password = os.getenv("DB_PASSWORD")
        self.__database = os.getenv("DB_NAME")
        self.__connection = None

    def connect(self):
        try:
            self.__connection = pymysql.connect(
                host=self.__host,
                user=self.__user,
                password=self.__password,
                database=self.__database,
                cursorclass=pymysql.cursors.DictCursor
            )
        except pymysql.MySQLError as e:
            raise RuntimeError(f"Database connection failed: {e}")

    def disconnect(self):
        if self.__connection:
            self.__connection.close()

    def fetch_data(self, query):
        try:
            with self.__connection.cursor() as cursor:
                cursor.execute(query)
                return cursor.fetchall()
        except pymysql.MySQLError as e:
            raise RuntimeError(f"Failed to execute query: {e}")
