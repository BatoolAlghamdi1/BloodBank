import MySQLdb

def insertUser( name, BloodType):
  dbconnect = MySQLdb.connect("rm-l4vy0h5r7t2sbvu48vo.mysql.me-central-1.rds.aliyuncs.com", "batool", "batool@1997", "bloodbankdb")

  cursor = dbconnect.cursor()
  # cursor.execute("SELECT VERSION()")
  cursor.execute(
    "INSERT INTO User (name,BloodType) VALUES (%s,%s)",
              (name,BloodType)
  )
  dbconnect.commit()
  cursor.close()

  dbconnect.close()
  return True
