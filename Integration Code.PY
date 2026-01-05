from pymongo import MongoClient
import pyodbc

# Initialize connection flags
mongo_success = False
sql_success = False
mongo_collections = []
sql_tables = []

# MongoDB Connection
try:
    mongo_client = MongoClient("mongodb://localhost:27017/")
    mongo_db = mongo_client["Transplant"]
    mongo_collections = mongo_db.list_collection_names()
    mongo_success = True
except Exception as e:
    print(f"❌ MongoDB connection error: {e}")

# MS SQL Connection
# SQL Server Configuration
server = 'tcp:mcruebs04.isad.isadroot.ex.ac.uk'
database = 'BEMM459_GroupM'
username = 'GroupM'
password = 'TqlQ283*Wl'
driver_path = '/opt/homebrew/Cellar/msodbcsql18/18.5.1.1/lib/libmsodbcsql.18.dylib'

serverstring = f'DRIVER={{{driver_path}}};SERVER={server};DATABASE={database};UID={username};PWD={password};TrustServerCertificate=yes;Encrypt=no;'
print(serverstring)

# Connect to SQL Server
try:
    cnxn = pyodbc.connect(serverstring)
    cursor = cnxn.cursor()
    cursor.execute("SELECT name FROM sys.tables")
    sql_tables = [row[0] for row in cursor.fetchall()]
    sql_success = True
except Exception as e:
    print(f"❌ SQL Server connection error: {e}")

# Function to display SQL table content with schema handling
def show_sql_table(table_name):
    try:
        # Check if the table has a schema (e.g., dbo)
        cursor.execute(f"SELECT TABLE_SCHEMA, TABLE_NAME FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = ?", (table_name,))
        schema_row = cursor.fetchone()
        if schema_row:
            schema = schema_row[0]
            query = f"SELECT * FROM {schema}.{table_name}"  # Use schema + table name
        else:
            query = f"SELECT * FROM {table_name}"  # If no schema, just use the table name

        cursor.execute(query)
        rows = cursor.fetchall()
        columns = [column[0] for column in cursor.description]
        print(f"\nDisplaying {table_name} content:")
        for row in rows:
            print(dict(zip(columns, row)))
    except Exception as e:
        print(f"❌ Error displaying content of {table_name}: {e}")

# Function to display the menu
def display_menu():
    while True:
        print("\n📌 Select an option:")
        print("1️⃣ Show NoSQL Collections (MongoDB)")
        print("2️⃣ Show SQL Tables (SQL Server)")
        print("3️⃣ CRUD Operations (MongoDB)")
        print("4️⃣ CRUD Operations (SQL Server)")
        print("5️⃣ Exit")

        choice = input("Enter your choice (1/2/3/4/5): ")

        if choice == "1":
            if mongo_success and mongo_collections:
                print("\n✅ MongoDB Collections:")
                for collection in mongo_collections:
                    print(f"- {collection}")
                collection_name = input("Enter the collection name to display its content: ")
                show_mongo_collection(collection_name)
            else:
                print("❌ No collections found or MongoDB connection failed.")
        
        elif choice == "2":
            if sql_success and sql_tables:
                print("\n✅ SQL Server Tables:")
                for table in sql_tables:
                    print(f"- {table}")
                table_name = input("Enter the table name to display its content: ")
                show_sql_table(table_name)
            else:
                print("❌ No tables found or SQL Server connection failed.")
        
        elif choice == "3":
            mongo_crud_operations()

        elif choice == "4":
            sql_crud_operations()
        
        elif choice == "5":
            print("🔴 Exiting... Goodbye!")
            break
        else:
            print("⚠️ Invalid choice, please select again.")

# Run the menu function
display_menu()

# Close connections
if mongo_success:
    mongo_client.close()
if sql_success:
    cnxn.close()