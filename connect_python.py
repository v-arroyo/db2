import ibm_db

conn_str = (
    "DATABASE=phd;"
    "HOSTNAME=localhost;"
    "PORT=50000;"
    "PROTOCOL=TCPIP;"
    "UID=db2inst1;"
    "PWD=password;"
)

conn = ibm_db.connect(conn_str, "", "")
sql = "SELECT * FROM sites"
stmt = ibm_db.exec_immediate(conn, sql)

# result = ibm_db.fetch_assoc(stmt)
# while result is not False:
#     print(result)
#     result = ibm_db.fetch_assoc(stmt)

all_results = []
result = ibm_db.fetch_assoc(stmt)
while result is not False:
    all_results.append(result)
    result = ibm_db.fetch_assoc(stmt)
print(all_results)