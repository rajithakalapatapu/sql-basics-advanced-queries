import cx_Oracle

files = [
    'DEPARTMENT',
    'EMPLOYEE',
    'DEPT_LOCATIONS',
    'PROJECT',
    'WORKS_ON',
    'DEPENDENT']
connection = cx_Oracle.connect('system/123456@localhost:1521/ORCLCDB')
cursor = connection.cursor()


def insert_into_db(table, values):
    sql = 'insert into {} values ({})'.format(table, values.rstrip())
    try:
        cursor.execute(sql)
        connection.commit()
        print('{} succeeded'.format(sql))
    except cx_Oracle.IntegrityError as ie:
        print('{} failed due to {}'.format(sql, ie))
        connection.rollback()
    except cx_Oracle.DatabaseError as de:
        print('{} failed due to {}'.format(sql, de))
        connection.rollback()


for file in files:
    print('Processing file {} starts'.format(file))
    with open('{}.txt'.format(file), 'r') as file_to_read:
        print('Read the file {}'.format(file))
        for line in file_to_read.readlines():
            insert_into_db(file, line)
