import mysql.connector as mysql
from mysql.connector import errorcode
import os

# Table creation
# CREATE TABLE IF NOT EXISTS User (
#     id INT PRIMARY KEY,
#     name VARCHAR(50) NOT NULL,
#     BloodType VARCHAR(50) NOT NULL

def insertUser( name, BloodType):
    con = mysql.connect(
        host="rm-l4v8h4l822517sl86xo.mysql.me-central-1.rds.aliyuncs.com",
        user="bloodbank",
        password="batool@1997",
        db="bloodbankdb"
    )
    cur = con.cursor()
    try:
        cur.execute(
            "INSERT INTO User (name,BloodType) VALUES (%s,%s)",
            (name,BloodType)
        )
        con.commit()
        cur.close()
        con.close()
        return True
    except mysql.Error as err:
        print(err)
        cur.close()
        con.close()
        return False

