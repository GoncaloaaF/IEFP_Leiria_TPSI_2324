import sqlite3


class dbHandler:
    def __init__(self, dbName:str):
        self.dbName = dbName

    def saveData(self, data:dict):
        self.conn = sqlite3.connect(self.dbName)

