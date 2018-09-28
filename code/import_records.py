files = ['DEPARTMENT', 'EMPLOYEE', 'DEPT_LOCATIONS','PROJECT','WORKS_ON','DEPENDENT']

for file in files:
    print('Processing file {} starts'.format(file))
    with open('{}.txt'.format(file), 'r') as file_to_read:
        print('Read the file {}'.format(file)) 
        with open('{}_queries.sql'.format(file), 'w+') as file_to_write:
            print('Writing')
            file_to_write.write("SET ECHO ON;\n")
            for line in file_to_read.readlines():
                file_to_write.write("insert into {} values({}); \n".format(file,line))
            print('Done Writing queries from {} file'.format(file))
            file_to_write.write("SET ECHO OFF;\n")
