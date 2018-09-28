with open('DEPARTMENT.txt', 'r') as file_to_read: 
    with open('department_queries.sql', 'w+') as file_to_write:
        for line in file_to_read.readlines():
            file_to_write.write("insert into DEPARTMENT values({}); \n".format(line[:-1]))
